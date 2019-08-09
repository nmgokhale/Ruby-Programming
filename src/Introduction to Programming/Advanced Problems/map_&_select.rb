# Array-giving enumerables
# map -- return a new array having the elements modified as whatever we code after arr.map function.
          # Mapping the elements of the original array through the code block into a new array
# select


# map example
arr = ["a", "b", "c", "d"]
new_arr = arr.map { |element| element.upcase + "!" }
print new_arr # ["A!", "B!", "C!", "D!"]
puts

# alternate code for map example
# new_arr = []
# arr.each { |element| new_arr << element.upcase + "!"}
# print new_arr # ["A!", "B!", "C!", "D!"]
# puts

# select example
num = [1, 2, 3, 4, 5, 6]
evens = num.select { |ele| ele % 2 == 0 }
print evens
puts

# alternate code for select example
evens = []
num.each do |element|
  if element % 2 == 0
    evens << element
  end
end
print evens # [2, 4, 6]
puts


# map example do block
arr = ["apple", "bootCAMP", "caRrot", "DaNce"]
new_arr = arr.map do |ele|
  first_char = ele[0].upcase
  rest = ele[1..-1].downcase
  first_char + rest  # last line of your method will be taken as a new element
end

print new_arr # ["Apple", "Bootcamp", "Carrot", "Dance"]
puts

# map with index
arr = ["apple", "bootCAMP", "caRrot", "DaNce"]
new_arr = arr.map.with_index do |ele, idx|
 first_char = ele[0].upcase
 rest = ele[1..-1].downcase
 new_word = first_char + rest
 new_word * idx # eg. "hi" * 3 = hihihi
end

print new_arr # ["", "Bootcamp", "CarrotCarrot", "DanceDanceDance"]
puts
