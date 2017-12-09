class PigLatinizer

  def piglatinize(word)
  arr = word.split("")
  size = word.size
  vowels = ["a", "e", "i", "o", "u"]
  w = arr.index{|c| vowels.include?(c)}
    if w == 0
      word + "way"
    else
      word[i,size]+word[0,i]+"ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
