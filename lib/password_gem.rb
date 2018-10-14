
class Password
	
  def generate(quant = 1, len)
    unless quant.is_a?(Integer)
      raise "Неверный тип данных! Количество паролей не может быть #{quant.class}"
    end
    unless len.is_a?(Integer) || len.is_a?(Range)
      raise "Неверный тип данных! Длинна пароля не может быть #{len.class}"
    end
    constants = "bcdfghjklmnpqrstvwxyz".scan(/.{1}/)
    vowels = "aouie".scan(/.{1}/)
    compound = constants | ["ng", "sh", "nk", "ch", "wr", "tch", "qu", "ck", "wh", "th"]
    l = rand(1..9)
    passwords = []
    quant.times do
      word = ""
      if len.is_a?(Range)
        len = len.to_a.sample
      end
      while (word.length < len) do 
        if (l % 2 ) == 0
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
      passwords.push(word)
    end
    return passwords
  end
	
end



 
 
