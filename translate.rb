require 'uri'
require 'net/http'
require 'openssl'
require 'json'
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

    url = URI("https://rapid-translate-multi-traduction.p.rapidapi.com/t")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(url)
    request["content-type"] = 'application/json'
    request["X-RapidAPI-Key"] = '0ee2368128mshfbe96f93a6b18a1p1c6b93jsn478a278ca5df'
    request["X-RapidAPI-Host"] = 'rapid-translate-multi-traduction.p.rapidapi.com'
    request.body = "{
        \"from\": \"#{source}\",
        \"to\": \"#{trans}\",
        \"e\": \"\",
        \"q\": [
            \"#{text}\"
        ]
    }"

    response = http.request(request)
    data = JSON.parse(response.body)
    new_data = Log.new data
  end
end
