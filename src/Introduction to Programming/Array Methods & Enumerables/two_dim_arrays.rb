# Two dimensional arrays
arr = [
  ["a", "b", "c"],
  ["d", "e"],
  ["f", "g", "h"]
]

print arr #[["a", "b", "c"], ["d", "e"], ["f", "g", "h"]]
puts

puts arr[1][1] # e
puts arr[2][0] # f

puts "----------------"

arr.each do |subArr|
  print subArr
  puts
  subArr.each do |element|
    puts element
  end
end
