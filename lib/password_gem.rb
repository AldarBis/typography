require 'random-word'

RandomWord.exclude_list << /_/
module PasswordGem
  
    def self.password
      RandomWord.adjs.next + " " + RandomWord.nouns.next
    end
  
end