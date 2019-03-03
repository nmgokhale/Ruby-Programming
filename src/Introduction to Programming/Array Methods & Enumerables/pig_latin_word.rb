# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.
# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'
def pig_latin_word(word)
  pig_word = ""
  vowels = "aeiou"
  # if the word starts with a vowel
  if vowels.include?(word[0])
    pig_word = word + "yay"
  # if the word starts with a nonvowel
  else
    pig_word = findVowel(word)
  end
end


def findVowel(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, idx|
    if vowels.include?(char)
      beforeVowel = word[0...idx]
      afterVowel = word[idx..-1]
      return afterVowel + beforeVowel + "ay"
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
