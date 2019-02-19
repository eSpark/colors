# Colors
This repo contains packages that we can use for consistent color usage across
our products. This all began with a [confluence doc][1].

The current approach is to maintain a [`colors.json`][2] file that contains all
the colors our designers have laid out. Using that JSON file we can generate
the appropriate packages for whatever language we may need those colors for.
This has currently only been implemented for Elm, SCSS, and CSS but we may eventually
generate packages for JS.

## Installation

This package is not fully packaged up yet. We simply use the repository as a raw npm module.

```bash
$ yarn add https://github.com/eSpark/colors
```

### SCSS
```scss
@import "~@eSpark/colors";

.example {
  color: $es-color-teal-base;
}
```

### Elm
Elm doesn't support private shared modules so we're manually importing it.

```json
// Append this to elm.json
"source-directories": [
  "./node_modules/@eSpark/colors/dist/elm"
]
```

We also need the standard elm-color package:

```bash
$ elm install avh4/elm-color
```

```elm
import ES.UI.Color exposing (Color)

example : Color
example =
  ES.UI.Color.teal.base
```


[1]: https://esparklearning.atlassian.net/wiki/spaces/V5PD/pages/74448915?atlOrigin=eyJpIjoiMjdhZWI0MjM3ODg3NGEyYjk5NzU3ZmJkMGJhYTdlMGMiLCJwIjoiYyJ9
[2]: colors.json
