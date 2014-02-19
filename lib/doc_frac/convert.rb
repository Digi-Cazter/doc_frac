module DocFrac
  class Convert
    attr_accessor :text
    def initialize(from, to)
      @from_format = DocFrac::Format.new(from)
      @to_format = DocFrac::Format.new(to)
      @text = ""
    end

    def convert
      from_file = "/tmp/#{DocFrac::Utilities.random_string}.#{@from_format.ext}"
      to_file = "/tmp/#{DocFrac::Utilities.random_string}.#{@to_format.ext}"
      File.open(from_file, "w") {|f| f.write(@text) }
      `docfrac #{@from_format.format_text} #{from_file} #{@to_format.format_text} #{to_file}`
      file = File.open(to_file, "r").read
      File.delete(from_file, to_file)
      return file
    end
  end
end