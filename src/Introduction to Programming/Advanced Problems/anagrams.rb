# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams.
# Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort
# def anagrams?(word1, word2)
#   chars = []
#   # find if the length of 2 words is equal
#   if word1.length != word2.length
#     return false
#   end
#   # loop through the word1 and store each char in chars Array
#   word1.each_char do |char1|
#     chars << char1
#   end
#
#   # loop through word2 and see if each character is present in chars Array
#   word2.each_char do |char2|
#     if ! chars.include?(char2)
#       return false
#     end
#   end
#   return true
# end

# More efficient approach
def anagrams?(word1, word2)
  return char_count(word1) == char_count(word2)
end

def char_count(word)
  count = Hash.new(0)
  word.each_char do |char|
    count[char] += 1
  end
  return count
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
