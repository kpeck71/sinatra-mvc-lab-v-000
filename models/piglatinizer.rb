class PigLatinizer

  def piglatinize(word)
  arr.downcase = word.split("")
  size = word.size
  vowels = ["a", "e", "i", "o", "u"]
  i = arr.index{|c| vowels.include?(c)}
    if i == 0
      word + "way"
    else
      word[i,size]+word[0,i]+"ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
