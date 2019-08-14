# Class#method_name means method_name is an instance method
# Class::method_name means method_name is a class method

# Instance Method - 
# An instance method depends on the attributes or instance variables of an instance.
# For notation, we'll use Dog#speak to denote that speak is an instance method of Dog
class Dog
  def initialize(name, bark)
    @name = name
    @bark = bark
  end

  def speak
    @name + " says " + @bark
  end
end

my_dog = Dog.new("Fido", "woof")
my_dog.speak          # "Fido says woof"

other_dog = Dog.new("Doge", "much bork")
other_dog.speak       # "Doge says much bork"

# Class Method - 
# A class method is a method that is called directly on the class.
# we define class method by adding self. to the front of a method name
# For notation we'll use Dog::growl to denote that growl is an class method of Dog.
class Dog
  def initialize(name, bark)
    @name = name
    @bark = bark
  end

  def self.growl
    "Grrrrr"
  end
end

Dog.growl   # Grrrrr