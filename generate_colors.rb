require 'erb'
require 'json'

class ColorGenerator
  GENERATED_BLURB = "This is generated! Don't update manually!"

  RGB = Struct.new(:r, :g, :b) do
    def self.from_hex(val)
      chunks = val.scan(/[0-9a-f]{2}/i).map { |num| num.to_i(16) }
      self.new(*chunks)
    end

    def join(sep = ", ", &transform)
      transform ||= :itself
      [r, g, b].map(&transform).join(sep)
    end

    def join_intensity(sep = ", ")
      self.join(sep) { |item| (item / 255.0).round(2) }
    end

    def hex
      sprintf("#%02x%02x%02x", r, g, b)
    end
  end

  attr_reader :colors_hash

  def initialize(colors_json_path)
    # Load colors
    @colors_json = File.open(colors_json_path, "r")
    @colors_hash = JSON.load(@colors_json)
  end

  def call
    generate
    post_process
  end

  def generate
    safe_level = nil
    trim_mode = "%-"

    Dir.glob("tmpl/**/*") do |template_path|
      next if File.directory?(template_path)

      erb = ERB.new(IO.read(template_path), safe_level, trim_mode)
      target_path = template_path.sub("tmpl", "dist").chomp(".erb")
      IO.write(target_path, erb.result(binding))
    end
  end

  def post_process
    system "elm-format --yes dist/elm"
  end

  private

  def as_elm_name(raw)
    # prepend x, because x is cool
    #   e.g. 20 => x20
    raw.match?(/^[a-z]/) ? raw : "x" + raw
  end
end

def main
  generator = ColorGenerator.new("colors.json")
  generator.call
end

main
