# Adding additional method, functionality to an existing class
# Ruby types are really classes: String, Array, Hash, Integer etc..

# We're adding an additional method upcase? to String class
# Note - We're not overwriting existing methods of String class
class String
    def upcase?
        self.upcase == self
    end
end

p "hello".upcase? # false
p "HELLO".upcase? # true

# Add an additional method prime? to Integer class to check if integer is a prime number
class Integer
    def prime?
        return false if self < 2 
        (2...self).each do |factor|
            if self % factor == 0
                return false
            end
        end
        true
    end
end

p 7.prime? # true
p 11.prime? # true
p 12.prime? # false

# Add an additional method has_zero? to Array class to check if array contains atleast one 0 in it
class Array
    def has_zero?
        self.include?(0)
    end
end

p [4, 3, 2, 0, "hello"].has_zero? # true
p [4, 3, 2, "hello"].has_zero? # false