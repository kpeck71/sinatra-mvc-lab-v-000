class PigLatinizer

  def piglatinize(word)
  arr = word.split("")
  size = word.size
  vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(word[0])
      word + "way"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
