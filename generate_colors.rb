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

  def as_elm_name(raw)
    # prepend x, because x is cool
    #   e.g. 20 => x20
    raw.match?(/^[a-z]/) ? raw : "x" + raw
  end

  def generate_elm_module
    safe_mode = nil
    trim_mode = "-" # prevent <%- -%> from adding newlines
    template = ERB.new <<-ELM, safe_mode, trim_mode
module ES.UI.Color exposing (Color(..), #{@colors_hash.keys.sort.join ", "})


type Color
    = Color String
<%- @colors_hash.each do |family, shades| -%>


<%= as_elm_name(family) %> =
    <%- sep = "{" -%>
    <%- shades.each do |shade, hex| -%>
    <%= sep %> <%= as_elm_name(shade) %> = Color "<%= hex %>"
    <%- sep = "," -%>
    <%- end -%>
    }
<%- end -%>
    ELM

    IO.write("./elm/ES/UI/Color.elm", template.result(binding))
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.generate
end

main
