require 'erb'
require 'json'

class ColorGenerator
  RGB = Struct.new(:r, :g, :b) do
    def self.from_hex(val)
      chunks = val.scan(/[0-9a-f]{2}/i).map { |num| num.to_i(16) }
      self.new(*chunks)
    end

    def join(sep = ", ", &transform)
      transform ||= :itself
      [r, g, b].map(&transform).join(sep)
    end

    def hex
      sprintf("#%02x%02x%02x", r, g, b)
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
    template = ERB.new <<~ELM
      module ES.UI.Color exposing (Color, black, white, transparent, <%= @colors_hash.keys.join ", " %>)

      -- This is generated! Don't update manually!

      import Color


      type alias Color =
          Color.Color


      black : Color
      black =
          Color.rgb 0.0 0.0 0.0


      white : Color
      white =
          Color.rgb 1.0 1.0 1.0


      transparent : Color
      transparent =
          Color.rgba 0.0 0.0 0.0 0.0


      <% @colors_hash.each do |family, shades| %>
      <%= as_elm_name(family) %> =
        <% shades.each_with_index do |(shade, hex), i| %>
          <% sep = i == 0 ? "{" : "," %>
          <% rgb = RGB.from_hex(hex) %>
          <%= sep %> <%= as_elm_name(shade) %> = Color.rgb255 <%= rgb.join(' ') %> -- <%= rgb.hex %>
        <% end %>
        }
      <% end %>
    ELM

    IO.write("dist/elm/ES/UI/Color.elm", template.result(binding))
    system "elm-format --yes dist/elm/ES/UI/Color.elm"
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
