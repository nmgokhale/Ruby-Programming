# Write a method first_half(array) that takes in an array and returns a new array containing
# the first half of the elements in the array.
# If there is an odd number of elements, return the first half including the middle element.
def first_half(array)
  half = []
  i = 0
  while i < array.length/2.0   # added 2.0 here because for odd numbered arrays, /2.0 will give exaxct division including decimal
    half << array[i]
    i += 1
  end
  return half
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
