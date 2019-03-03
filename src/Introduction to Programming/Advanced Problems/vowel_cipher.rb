# Write a method vowel_cipher that takes in a string and
# returns a new string where every vowel becomes the next vowel in the alphabet.
def vowel_cipher(str)
  vowels = "aeiou"
  new_str = ""
  str.each_char do |char|
    if vowels.include?(char)
      current_index = vowels.index(char)
      new_index = current_index + 1
      char = vowels[new_index % vowels.length]
    end
    new_str += char
  end
  return new_str
end

puts vowel_cipher("bootcamp") # => buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
