require 'erb'
require 'json'

class ColorGenerator
  def initialize(colors_json_path)
    # Load colors
    @colors_json = File.open(colors_json_path, "r")
    @colors_hash = JSON.load(@colors_json)
  end

  def generate
    generate_elm_module
  end

  private

  def generate_elm_module
    color_definitions = @colors_hash.each_with_object({}) do |(color_name, color_set), defn|
      color_set.each do |shade_name, hex|
        function_name = color_name + shade_name.capitalize
        defn[function_name] = hex
      end
    end

    template = ERB.new <<-ELM
module Color exposing (Color(..), #{color_definitions.keys.sort.join ", "})


type Color
    = Color String

<% color_definitions.each do |name, hex| %>

<%= name %> : Color
<%= name %> =
    Color "<%= hex %>"
<% end %>
    ELM

    IO.write("./elm/Color.elm", template.result(binding))
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
