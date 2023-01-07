require_relative 'translate.rb'

class Checker
  def initialize text, source, trans
    check text,source,trans
  end

  def method_missing method
    return puts "This behavior doesnt exist"
  end

  private

  def check text, source, translation
    return raise "Empty text" if text.empty?

    @checksum_arr = [source, translation]
    @languages = ["pt", "en", "jp", "fr", "es", "ru", "al"]
    @check_arr = []

    @checksum_arr.each do |idx|
      @languages.each do |lang|
        @check_arr << idx if idx == lang
      end
    end

    @check_arr.length >= 2 ? success(text, source, translation) : error
  end

  def success text, source, trans
    new_translate = Translater.new text, source, trans
  end

  def error
    raise "Esse idioma nao existe"
  end

end
