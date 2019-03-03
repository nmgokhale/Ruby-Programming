# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string where every character of the original is shifted num characters in the alphabet.
# def caesar_cipher(str, num)
#    encrypted_arr = []
#    str.each_char.with_index do |char, idx|
#      encrypted_arr << new_char(char, num)
#    end
#    return encrypted_arr.join("")
# end
#
# def new_char(char, num)
#   alphabet = "abcdefghijklmnopqrstuvwxyz"
#   alphabet_arr = alphabet.split("")
#   new_index = alphabet_arr.index(char) + num
#   # if char is z & num = 4, new index = 29. So new_index should be 29 - 26 = 4 which is char d
#   if(new_index > alphabet_arr.length)
#     new_index = new_index - alphabet_arr.length
#   end
#   return alphabet_arr[new_index]
# end

# More efficient way
def caesar_cipher(str, num)
  new_str = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  str.each_char do |char|
    old_index = alphabet.index(char)
    new_index = old_index + num
    new_char = alphabet[new_index % 26]   # MOST IMPORTANT STEP!!!!! THIS WILL ALSO TAKE CARE OF new_index > 26
    new_str += new_char
  end
  return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
