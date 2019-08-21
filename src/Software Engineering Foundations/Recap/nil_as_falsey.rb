# Truthy and falsey values
# falsey: false or nil
# truthy: everything else!

if nil
    p "it is truthy"
else
    p "it is falsey"     # Ans: "it is falsey"
end

if false
    p "it is truthy"
else
    p "it is falsey"     # Ans: "it is falsey"
end

# a || b
# when a is truthy, return a
# when a is falsey, return b

p true || 42 # true
p 42 || true # 42
p false || 42 # 42
p 42 || false # 42
p false || "hello" # "hello"  
p nil || "hello" # "hello"
p "hi" || "hello" # "hi"
p 0 || true # 0
p false || nil # nil  


def greet(person = nil)
    if person.nil?
        person = "you"
    end
    p "hey " + person
end

greet # "hey you"
greet("Neha") # "hey Neha"
greet("Neeraj") # "hey Neeraj"

p "---------------------------------"

def greet(person = nil)
    person = person || "you" # replacement of code #33-35
    p "hey " + person
end

greet # "hey you"
greet("Neha") # "hey Neha"
greet("Neeraj") # "hey Neeraj"

def call_that_prc(val, &prc)
    prc ||= Proc.new{ |data| data * 2 }
    p prc.call(val)
end

call_that_prc('Neha') { |data| data.upcase+"!" } # "NEHA!"
# Using ||=  to assign default value to proc
call_that_prc('Data') # "DataData"

# Using ||= to make our code more efficient
# Creating array @menu at initialize method
class Restaurant
    def initialize(name, chefs)
        @name = name
        @chefs = chefs
        @menu = ["Makhni Pasta", "Kaju Curry", "Fried Rice", "Thaliputh", "Missal"]
    end
end

five_star_restaurant = Restaurant.new("Lajawab!", ["Neha", "Neeraj"])
p five_star_restaurant #<Restaurant:0x0000000005460af0 @name="Lajawab!", @chefs=["Neha", "Neeraj"], @menu=["Makhni Pasta", "Kaju Curry", "Fried Rice", "Thaliputh", "Missal"]>


# Lazy Initialization - Only assign @menu attribute when we need it!
class Restaurant

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
    end

    def menu
        @menu ||= ["Makhni Pasta", "Kaju Curry", "Fried Rice", "Thaliputh", "Missal"]
    end
end

five_star_restaurant = Restaurant.new("Lajawab!", ["Neha", "Neeraj"])
p five_star_restaurant #<Restaurant:0x0000000002914860 @name="Lajawab!", @chefs=["Neha", "Neeraj"]>
p five_star_restaurant.menu # nil
p five_star_restaurant.menu # ["Makhni Pasta", "Kaju Curry", "Fried Rice", "Thaliputh", "Missal"] (after adding @menu ||= ["Makhni Pasta"])