module PasswordGem
  
  def self.password_fixed(len)
    constants = "bcdfghjklmnpqrstvwxyz".scan(/.{1}/)
    vowels = "aouie".scan(/.{1}/)
    compound = constants | ["ng", "sh", "nk", "ch", "wr", "tch", "qu", "ck", "wh", "th"]
    word = ""
    l = rand(1..9)

    while (word.length < len) do 
      if  (l % 2 ) == 0
        word = word + vowels.sample
      else
        case word.length
	      when len - 1, 0
            compound = constants
          when len - 2
            compound = compound - ["tch"]
        end		
	    word = word + compound.sample
	  end
      l += 1
    end
    return word
  end

  def self.password_interval(interv)
    password_fixed(interv.to_a.sample)
  end

  def self.password_quant(quant, len)
    passwords = []
    if len.is_a?(Integer)
      quant.times do
	    passwords.push(password_fixed(len))
      end
    end
  
    if len.is_a?(Range)
      quant.times do
	    passwords.push(password_interval(len))
      end
    end
    return passwords
  end
end