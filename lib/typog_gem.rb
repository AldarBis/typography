require 'calling'
require 'json'
require 'net/http'

  class Typograph 
   
    def initialize(raw_text)
      @raw_text = raw_text
    end
    
    def validate(text)
      unless text.is_a?(String)
        raise TypeError.new("Argument could not be an #{text.class}")
      end
      if text.empty?
        raise ArgumentError.new("Text could not be empty") 
      end
    end
  
    def typo
      validate(@raw_text)
      res =  Call.new.calling(@raw_text)
      JSON.parse(res.body)["result"]
    end
    
  end
  
  