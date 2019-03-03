# Write a method is_valid_email that takes in a string and returns
# a boolean indicating whether or not it is a valid email address.
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
# contains exactly one @ symbol
  words = str.split("@")
  if words.length != 2
    return false
  end
# contains only lowercase letters before the @
  if words[0] != words[0].downcase
    return false
  end
# contains only alphabetic letters before the @
  if checkForNumbers(words[0])
    return false
  end
# contains exactly one . after the @
  halves = words[1].split(".")
  if halves.length != 2
    return false
  end
  return true
end

# If the number exists in given word, return true else return false
def checkForNumbers(word)
  numbers = "1234567890"
  word.each_char do |char|
    if numbers.include?(char)
      return true
    end
  end
  return false
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
