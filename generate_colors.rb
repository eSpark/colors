require 'erb'
require 'json'

class ColorGenerator
  RGB = Struct.new(:r, :g, :b) do
    def self.from_hex(val)
      val = val[1..-1] if val.start_with?("#")
      chunks = val.scan(/.{2}/).map { |num| num.to_i(16) }
      self.new(*chunks)
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

    def hex
      sprintf "#%02x%02x%02x", r, g, b
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
module ES.UI.Color exposing (#{@colors_hash.keys.join ", "})

import Color


<%- @colors_hash.each do |family, shades| -%>
<%= as_elm_name(family) %> =
    <%- sep = "{" -%>
    <%- shades.each do |shade, hex| -%>
    <%- rgb = RGB.from_hex(hex) -%>
    <%= sep %> <%= as_elm_name(shade) %> = Color.rgb <%= rgb.r_weight %> <%= rgb.g_weight %> <%= rgb.b_weight %> -- <%= rgb.hex %>
    <%- sep = "," -%>
    <%- end -%>
    }
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
