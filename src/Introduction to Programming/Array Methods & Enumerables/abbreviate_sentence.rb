# Write a method abbreviate_sentence that takes in a sentence string and
# returns a new sentence where every word longer than 4 characters has all of it's vowels removed.
def abbreviate_sentence(sent)
  wordsArr = sent.split(" ")
  new_sentence = []
  wordsArr.each do |word|
    if word.length > 4
      new_sentence << abbreviate_word(word)
    else
      new_sentence << word
    end
  end
  return new_sentence.join(" ")
end

def abbreviate_word(word)
  vowels = "aeiou"
  new_word = ""
  word.each_char do |singleChar|
    if !vowels.include?(singleChar)
      new_word += singleChar
    end
  end
  return new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
