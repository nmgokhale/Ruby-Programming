# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome,
# false otherwise. A palindrome is a word that is spelled the same forwards and backwards.
def is_palindrome(word)
  forward = 0
  backword = word.length - 1
  while forward <= backword
    if word[forward] != word[backword]
      return false
    end
    forward += 1
    backword -= 1
  end
  return true
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
