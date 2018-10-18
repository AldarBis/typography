
require 'json'
require 'net/http'
require 'nokogiri'

class Typograph
  
  def initialize(source)
    @source = source
  end
  
  def typo
    uri = URI.parse('http://mdash.ru/api.v1.php?')
    params = URI.decode_www_form(uri.query)
    params << ['text', @source]
    uri.query = URI.encode_www_form(params)
    uri = URI(uri.to_s)
    Nokogiri::HTML(JSON.parse(Net::HTTP.get(uri))["result"]).text
  end
end