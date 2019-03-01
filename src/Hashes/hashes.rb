# Data Structure - hashes
# key => value pairs

# Hash Methods -
# .length --> returns number of pairs in the hash
# .has_key?(k)
# .has_value?(v)
# .keys --> returns an array having all the keys
# .values --> returns an array having all the values

my_hash = {
  "name"=>"Neha",
  "color" => "red",
  "age" => 27,
  "isAwesome" => true,
  42 => "Hello"
}
puts my_hash # {"name"=>"Neha", "color"=>"red", "age"=>27, "isAwesome" => true}
puts my_hash["name"]  # Neha
puts my_hash["age"] # 27

# update value inside Hash
my_hash["color"] = "violet"
puts my_hash # {"name"=>"Neha", "color"=>"violet", "age"=>27, "isAwesome" => true}

my_hash["age"] += 1
puts my_hash # {"name"=>"Neha", "color"=>"violet", "age"=>28, "isAwesome" => true}

puts my_hash[42] # Hello

# Hash Methods
cat = {
  "name" => "Lucy",
  "color" => "Black & White",
  "age" => 3,
  "isHungry" => true,
  "enemies" => ["dogs"]
}
puts cat # {"name"=>"Lucy", "color"=>"Black & White", "age"=>3, "isHungry"=>true, "enemies"=>["dogs"]}

puts cat.length # 5

cat["name"] = "Oreo"
puts cat # {"name"=>"Oreo", "color"=>"Black & White", "age"=>3, "isHungry"=>true, "enemies"=>["dogs"]}

cat["location"] = "Sunnyvale"
puts cat # {"name"=>"Oreo", "color"=>"Black & White", "age"=>3, "isHungry"=>true, "enemies"=>["dogs"], "location"=>"Sunnyvale"}

print cat["enemies"] << "squirrel"
puts
puts cat # {"name"=>"Oreo", "color"=>"Black & White", "age"=>3, "isHungry"=>true, "enemies"=>["dogs", "squirrel"], "location"=>"Sunnyvale"}

puts cat.has_key?("enemies") # true
puts cat.has_key?("COLOR") # false --> ruby is case sensitive

puts cat.has_value?("Oreo") # true
puts cat.has_value?(false) # false

print cat.keys # ["name", "color", "age", "isHungry", "enemies", "location"]
puts
print cat.values # ["Oreo", "Black & White", 3, true, ["dogs", "squirrel"], "Sunnyvale"]
