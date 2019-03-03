# Write a method consonant_cancel that takes in a sentence and
# returns a new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  arr = sentence.split(" ")
  new_arr = arr.map do |element|
    crop_word(element)
  end
  return new_arr.join(" ")
end

def crop_word(word)
  vowels = "aeiou"
  vowelIndex = 0
  word.each_char.with_index do |char, idx|
    if vowels.include?(char)
      vowelIndex = idx
      break
    end
  end
  return word[vowelIndex..-1]
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
