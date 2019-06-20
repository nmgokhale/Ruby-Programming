# Write a function that takes a string and returns true if it's a palindrome, false if it's not.

def is_palindrome(str)
  i = 0, j = str.length-1
  while i < j
    if str[i] != str[j]
      return false
    i += 1
  end
  return true
end

puts is_palindrome("abba") # true

puts is_palindrome("bye") 

# is_palindrome("a") # true

# is_palindrome("") # true
