# Nested loops

(1..3).each do |num1|
  puts num1
  (1..5).each do |num2|
    puts "   " + num2.to_s
  end
end

puts "------------------"

(1..3).each do |num1|
  (1..5).each do |num2|
    puts num1.to_s + "   " + num2.to_s
  end
end
puts "------------------"

# below we iterate through all possible pairs including duplicates
arr = ["a", "b", "c", "d"]
arr.each do |char1|
  arr.each do |char2|
    puts char1 + char2
  end
end
puts "------------------"

# below we iterate through only unique pairs
arr = ["a", "b", "c", "d"]
arr.each_with_index do |char1, idx1|
  arr.each_with_index do |char2, idx2|
    if idx2 > idx1
      puts char1 + char2
    end
  end
end

# If idx2 > idx1, then idx2 is never referring to what idx1 refererred to previously
