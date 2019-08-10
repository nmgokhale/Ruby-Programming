# 1)---------------------
food = "pizza"
p food # "pizza"

# 2) Local Scope
def say_hello
    message = "hello"
    p message
end
say_hello # "hello"
# p message #  undefined local variable or method `message' -- because message has local scope

# 3) Outside Scope
message = "Heyy"
def say_hi
    p message
end
# say_hi #  undefined local variable or method `message'

# 4) Global Scope
def say_hey
    $msg = "Holaa"
end

p $msg # "Holaa"

# 5) Constants
FOOD = "Pasta"
p FOOD 

# You can mutate constants but you can't reassign values to constants
FOOD = "Chinese" # warning: already initialized constant FOOD
FOOD[0] = "Z"
p FOOD # "Zasta"

#  5) Blocks & loops don't have their own scope
msg = "Heyaaa"
3.times do
    p msg  # "Heyaaa" "Heyaaa" "Heyaaa"
end