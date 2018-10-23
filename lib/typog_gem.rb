
require 'json'
require 'net/http'

  class Validator
    
    def validate(text)
      unless text.is_a?(String)
        raise TypeError.new("Argument could not be an #{text.class}")
      end
      if text.empty?
        raise ArgumentError.new("Text could not be empty") 
      end
    end
    
  end
  
  class Typograph < Validator
   
    def initialize(raw_text)
      @raw_text = raw_text
    end
  
    def typo
      validate(@raw_text)
      uri = URI('http://mdash.ru/api.v1.php')
      res = Net::HTTP.post_form(uri, 'Host' => 'mdash.ru', 'Content-type' => 'multipart/form-data',
      'Content-Length' => '24', 'text' => @raw_text)
      JSON.parse(res.body)["result"]
    end
    
  end