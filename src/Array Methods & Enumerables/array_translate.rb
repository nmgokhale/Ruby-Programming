# Write a method array_translate that takes in an array whose elements alternate between words and numbers.
# The method should return a string where each word is repeated the
# number of times that immediately follows in the array.

def array_translate(array)
  repeatedWords = ""
  i = 0
  while i < array.length-1
    word = array[i]
    num = array[i+1]
    num.times { repeatedWords += word }
    i += 2
  end
  return repeatedWords
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
