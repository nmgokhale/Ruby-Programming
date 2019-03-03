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
# alternate code for select example
num = [1, 2, 3, 4, 5, 6]
evens = []
num.each do |element|
  if element % 2 == 0
    evens << element
  end
end
print evens # [2, 4, 6]
puts
