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
    elm_file = File.new("./elm/Color.elm", "w")

    color_type = <<-ELM
type Color
    = Color String
    ELM

    color_functions = @colors_hash.each_with_object([]) do |(color_name, color_set), elm_output|
      color_set.each do |shade_name, color_value|
        function_name = color_name + shade_name.capitalize

        color_function = <<-ELM
#{function_name} : Color
#{function_name} =
    Color "#{color_value}"
        ELM

        elm_output << [function_name, color_function]
      end
    end

    # Define elm module
    exported_function_names = color_functions.map { |pair| pair[0] }.sort.join ", "
    module_string = <<-ELM
module Color exposing (Color(..), #{exported_function_names})
    ELM

    exported_functions = color_functions.map { |pair| pair[1] }.join "\n\n"

    elm_file.puts(module_string + "\n\n" + color_type + "\n\n" + exported_functions)
    elm_file.close
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
