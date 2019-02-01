require 'erb'
require 'json'

class ColorGenerator
  RGBA = Struct.new(:r, :g, :b, :a) do
    COLOR_MAX = 255.0

    def self.from_hex(val)
      val = val.tr("#", "")
      chunks = val.scan(/.{2}/).map { |num| num.to_i(16) }
      chunks.push(COLOR_MAX) if chunks.size == 3
      self.new(*chunks)
    end

    def join(sep = ", ", &transform)
      transform ||= :itself
      [r, g, b, a].map(&transform).join(sep)
    end

    def join_intensity(sep, scale = 2)
      join(sep) { |i| (i / COLOR_MAX).round(scale) }
    end

    def hex
      if a == COLOR_MAX
        sprintf("#%02x%02x%02x", r, g, b)
      else
        sprintf("#%02x%02x%02x%02x", r, g, b, a)
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
    template = ERB.new <<~SQUIGGLY
      module ES.UI.Color exposing (Color, <%= @colors_hash.keys.join ", " %>)

      -- This is generated! Don't update manually!

      import Color


      type alias Color =
          Color.Color


      <% @colors_hash.each do |family, shades| %>
      <%= as_elm_name(family) %> =
          <% if shades.is_a? String %>
            <% rgba = RGBA.from_hex(shades) %>
            -- <%= rgba.hex %>
            Color.rgba <%= rgba.join_intensity(' ') %>
          <% else %>
            <% shades.each_with_index do |(shade, hex), i| %>
              <% sep = i == 0 ? "{" : "," %>
              <% rgba = RGBA.from_hex(hex) %>
              <%= sep %> <%= as_elm_name(shade) %> = Color.rgba <%= rgba.join_intensity(' ') %> -- <%= rgba.hex %>
            <% end %>
            }
          <% end %>
      <% end %>
    SQUIGGLY

    IO.write("dist/elm/ES/UI/Color.elm", template.result(binding))
    system "elm-format --yes dist/elm/ES/UI/Color.elm"
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
