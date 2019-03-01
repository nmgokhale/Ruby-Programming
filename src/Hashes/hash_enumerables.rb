# Hash enumerables
# .each
# .each_key
# .each_value

#

pizza = {
  "style" => "chicago",
  "slices" => 8,
  "diameter" => "15 inches",
  "toppings" => ["mushrooms", "onions", "bell peppers", "pinapple"],
  "is_tasty" => true
}

puts pizza # {"style"=>"chicago", "slices"=>8, "diameter"=>"15 inches", "toppings"=>["mushrooms", "onions", "bell peppers", "pinapple"], "is_tasty"=>true}

pizza.each do |key, val|
  puts key
  puts val
  puts "------"
end

pizza.each_key do |key|
  puts key
end

puts "-----------------"
pizza.each_value do |val|
  puts val
end

puts "-----------------"
