# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.
def reverse(word)
  index = word.length - 1
  reversedWord = ""
  while index >= 0
    char = word[index]
    reversedWord << char
    index -= 1
  end
  return reversedWord
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
