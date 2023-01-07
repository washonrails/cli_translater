require 'uri'
require 'net/http'
require 'openssl'
require_relative 'log.rb'

class Translater

  def initialize text, source, trans
    @text = text
    @source = source
    @translation = trans

    translate @text, @source, @translation
  end

  private

  def translate text, source, trans

    url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2/detect")

  end
end
