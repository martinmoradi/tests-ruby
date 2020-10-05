#) commence par 1 voyelle : +ay a la fin
#) commence par 1 consonnee : shift consonne fin + ay
#) commence par 2 ou 3 consonnes : shift les consonnes + ay 
#) marche sur plusieurs mois
#) à "sch" "qu" -> shift + ay
#) garde la capilisation par rapport a l'index + ponctuation

def translate(sentence)
  alpha = ('a'..'z').to_a
  vowels = %w(a e i o u)
  consonants = alpha - vowels
  words = sentence.split

  words.map!.with_index do |word, idx|

    is_capitalized = true if word == word.capitalize
    w_dc = word.downcase
    w_out = ""

    if w_dc[0] == "q" && w_dc[1] == "u"
    w_out = w_dc[2..-1] + w_dc[0..1] + "ay"

    elsif consonants.include?(w_dc[0]) && w_dc[1] == "q" && w_dc[2] == "u"
    w_out = w_dc[3..-1] + w_dc[0..2] + "ay"

    elsif consonants.include?(w_dc[0]) && consonants.include?(w_dc[1]) && consonants.include?(w_dc[2])
    w_out = w_dc[3..-1] + w_dc[0..2] + "ay"

    elsif consonants.include?(w_dc[0]) && consonants.include?(w_dc[1])
    w_out = w_dc[2..-1] + w_dc[0..1] + "ay" 

    elsif vowels.include?(w_dc[0])
    w_out = w_dc + "ay"  

    elsif consonants.include?(w_dc[0])
    w_out =w_dc[1..-1] + w_dc[0] + "ay"
 
    else 
    w_out = w_dc 

    end    

    w_out = w_out.capitalize if is_capitalized
    w_out
  end

  words.join(" ")
end
