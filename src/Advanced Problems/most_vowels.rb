# Write a method most_vowels that takes in a sentence string and
# returns the word of the sentence that contains the most vowels.
def most_vowels(str)
  words = str.split(" ")
  hash = Hash.new(0)
  words.each do |word|
    hash[word] = vowel_count(word)
  end
  sorted_hash =  hash.sort_by { |key, val| val} # [["a", 1], ["what", 1], ["life", 2], ["wonderful", 3]]
  return sorted_hash[-1][0]
end

def vowel_count(word)
  vowels = "aeiou"
  count = 0
  word.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  return count
end

print most_vowels("what a wonderful life") #=> "wonderful"
