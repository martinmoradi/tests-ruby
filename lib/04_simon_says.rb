def echo(str)
  str.downcase
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  num.times.collect { str }.join(" ")
end

def start_of_word(str, num)
  str[0..(num-1)]
end

def first_word(str)
  str.split(" ")[0]
end

def titleize(str)
  no_caps = %w(and the)
  arr = str.split.map.with_index do |word, idx|    
    if idx == 0
      word.capitalize
    elsif !no_caps.include?(word)
      word.capitalize 
    else 
      word
    end
  end
  arr.join(" ")  
end

# CAPITALIZE EVERY WORD 
# SAUF no_caps SAUF QUAND IL EST INDEX 0