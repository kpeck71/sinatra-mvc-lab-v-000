class PigLatinizer

  def piglatinize(word)
  arr = word.split("")
  vowels = ["a", "e", "i", "o", "u"]

    if skip.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
