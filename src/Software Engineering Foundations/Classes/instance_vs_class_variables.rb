# an @instance_variable will be a distinct variable in each instance of a class; 
# changing the variable will only effect that one instance

# a @@class_variable will be shared among all instances of a class; 
# changing the variable will effect all instances because all instances of the class

# Class Method - self.mathod_name

# a CLASS_CONSTANT will be shared among all instances of a class, but cannot be changed

# instance variables are denoted with @ and are typically assigned inside #initialize:
class Car
  def initialize(color)
    @color = color
  end

  def color
    @color
  end
end

# Class Variable
# @@ is used to denote class variable
# Instances car_1 and car_2 have their own/separate @color variables, but share a single @@num_wheels variable.
class Car
    @@num_wheels = 4

    def initialize(color)
        @color = color
    end

    # Getter for Class Variable
    def num_wheels
        @@num_wheels
    end

    # Setter for Class Variable
    def self.upgrade_to_flying_cars  # Class Method - self.mathod_name
        @@num_wheels = 0
    end
end

car_1 = Car.new("Red")
car_2 = Car.new("Blue")

p car_1.num_wheels # 4
p car_2.num_wheels # 4

Car.upgrade_to_flying_cars

p car_1.num_wheels # 0
p car_2.num_wheels # 0

# Class Constants
# Cannot be changed after initializing
# Class constant names must be capitalized. Notice that reassigning the constant will fail with an error
class Car
    NUM_WHEELS = 4
    def self.upgrade_to_flying_cars
        NUM_WHEELS = 0    # SyntaxError: dynamic constant assignment
    end

    def initialize(color)
        @color = color
    end

    def num_wheels
        NUM_WHEELS
    end
end

car_1 = Car.new("Red")
car_2 = Car.new("Black")

p car_1.NUM_WHEELS # 4
p car_2.NUM_WHEELS # 4

