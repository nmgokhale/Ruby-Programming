# To assign a default value to parameter:
# def repeat(message, num=1)
#     message * num
# end
# The repeat method above has an optional num argument. 
# If we call repeat without explicitly passing in a value for num, 
# num will be implicitly passed in with the value 1.
# 
# A fairly common design pattern is to set an arg to nil by default 
# def greet(person_1, person_2=nil)
#     if person_2.nil?
#         p "Hey " + person_1
#     else
#         p "Hey " + person_1 + " and " + person_2 
#     end
# end
# 
# Best practice to have optional parameters listed after the required ones. 
# So avoid writing code like this:
# def greet(person_1="default", person_2)
#     p person_1 + " and " + person_2
# end
# greet("Chao") # => "default and Chao"
# 
# Optional Hashes
# If you have a method that accepts a hash as an argument, 
# you can omit the braces when passing in the hash:
# def method(hash)
#     p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
# end

# method({"location"=>"SF", "color"=>"red", "size"=>100})

# # this also works:
# method("location"=>"SF", "color"=>"red", "size"=>100)

def repeat(str, n)
   return str * n
end

p repeat("Hello", 4) # "HelloHelloHelloHello"

# Give default values to parameters
def repeat_copy(str, n = 1)
   return str * n
end

p repeat_copy("hi") # "hi"
p repeat_copy("hi", 3) # "hihihi"

# Optional Hash
def printHash(hash)
    p hash
end

printHash({city: "ATL", company: "IT"}) # {:city=>"ATL", :company=>"IT"}

# braces are optional while passing the hash from argument
printHash(city: "ATL", company: "IT") # {:city=>"ATL", :company=>"IT"}