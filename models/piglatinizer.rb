class PigLatinizer

  def piglatinize(word)
  skip = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
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
    string.split.collect{|word| piglatinize(s)}.join(" ")
  end

end
