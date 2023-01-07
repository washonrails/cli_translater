require_relative 'checker.rb'

class App

  def initialize
    puts "Enter the text"
    text = gets.chomp.to_s

    puts "Source language"
    source = gets.chomp.to_s

    puts "Translate into which language ? e.g: en"
    translation = gets.chomp.to_s

    send_to_check text, source, translation
  end

  private

  def send_to_check text, source, translation
    @text = text
    @source = source
    @translation = translation

    new_check = Checker.new @text, @source, @translation
  end

end

app = App.new
