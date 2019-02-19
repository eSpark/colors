#!/usr/bin/env node

const fs = require("fs-extra");
const path = require("path");
const { exec } = require("child_process");

const Handlebars = require("handlebars");
const colorConvert = require("color-convert");
const klaw = require("klaw");

const COLORS_JSON = require("./colors.json");

Handlebars.registerHelper("ternary", (predicate, yes, no) => {
  return predicate ? yes : no;
});

Handlebars.registerHelper("identifier", rawString => {
  // prepend x, because x is cool
  //   e.g. 20 => x20
  return /^[a-z]/.test(rawString) ? rawString : `x${rawString}`;
});

Handlebars.registerHelper("keysJoin", (obj, sep) => {
  return Object.keys(obj).join(sep);
});

Handlebars.registerHelper("rgbJoin", (hex, sep) => {
  const values = colorConvert.hex.rgb(hex);
  return values.join(sep);
});

function files(path) {
  return new Promise((resolve, reject) => {
    const paths = [];
    klaw(path)
      .on("data", item => {
        if (!item.stats.isDirectory()) {
          paths.push(item.path);
        }
      })
      .on("error", reject)
      .on("end", () => resolve(paths));
  });
}

async function processTemplate(templatePath) {
  const source = await fs.readFile(templatePath, { encoding: "utf8" });
  const template = Handlebars.compile(source, { noEscape: true });
  const result = template({
    GENERATED_BLURB: "This is generated! Don't update manually!",
    colors: COLORS_JSON
  });

  const outPath = templatePath.replace("tmpl", "dist").replace(/.hbs$/, "");
  await fs.mkdirp(path.dirname(outPath));
  return fs.writeFile(outPath, result);
}

function postProcess() {
  return exec("elm-format --yes dist/elm");
}

async function main() {
  const paths = await files("./tmpl");
  await Promise.all(paths.map(processTemplate));
  return postProcess();
}

main();
