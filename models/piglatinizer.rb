class PigLatinizer

  def piglatinize(word)
  arr = word.split("")
  size = word.size
  vowels = ["a", "e", "i", "o", "u"]
  pairs = ["ch","sh","sm","st","th","gl","pl", "spr"]
    if vowels.include?(word[0].downcase)
      word + "way"
    elsif pairs.include?(word[0,1].downcase)
      word[1..0] + word[0,1] + "ay"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
