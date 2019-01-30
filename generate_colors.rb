require 'erb'
require 'json'

class ColorGenerator
  RGBA = Struct.new(:r, :g, :b, :a) do
    def self.from_hex(val)
      val = val[1..-1] if val.start_with?("#")
      chunks = val.scan(/.{2}/).map { |num| num.to_i(16) }
      chunks.push(255) if chunks.size == 3
      self.new(*chunks)
    end

    def join_weight(sep, round = 2)
      [r_weight(round), g_weight(round), b_weight(round), a_weight(round)].join(sep)
    end

    def r_weight(round = 2)
      (r / 255.0).round round
    end

    def g_weight(round = 2)
      (g / 255.0).round round
    end

    def b_weight(round = 2)
      (b / 255.0).round round
    end

    def a_weight(round = 2)
      (a / 255.0).round round
    end

    def hex
      if a == 255
        sprintf "#%02x%02x%02x", r, g, b
      else
        sprintf "#%02x%02x%02x%02x", r, g, b, a
      end
    end
  end

  def initialize(colors_json_path)
    # Load colors
    @colors_json = File.open(colors_json_path, "r")
    @colors_hash = JSON.load(@colors_json)
  end

  def generate
    generate_elm_module
  end

  private

  def as_elm_name(raw)
    # prepend x, because x is cool
    #   e.g. 20 => x20
    raw.match?(/^[a-z]/) ? raw : "x" + raw
  end

  def generate_elm_module
    safe_mode = nil
    trim_mode = "-" # prevent <%- -%> from adding newlines
    template = ERB.new <<-ELM, safe_mode, trim_mode
module ES.UI.Color exposing (Color, #{@colors_hash.keys.join ", "})

import Color


type alias Color =
    Color.Color


<%- @colors_hash.each do |family, shades| -%>
<%= as_elm_name(family) %> =
    <%- if shades.is_a? String -%>
      <%- rgba = RGBA.from_hex(shades) -%>
      -- <%= rgba.hex %>
      Color.rgba <%= rgba.join_weight(' ') %>
    <%- else -%>
      <%- sep = "{" -%>
      <%- shades.each do |shade, hex| -%>
        <%- rgba = RGBA.from_hex(hex) -%>
        <%= sep %> <%= as_elm_name(shade) %> = Color.rgba <%= rgba.join_weight(' ') %> -- <%= rgba.hex %>
        <%- sep = "," -%>
      <%- end -%>
      }
    <%- end -%>
<%- end -%>
    ELM

    IO.write("./elm/ES/UI/Color.elm", template.result(binding))
    system "elm-format --yes ./elm/ES/UI/Color.elm"
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
