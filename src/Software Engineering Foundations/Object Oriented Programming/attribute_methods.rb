# Attribute Methods - 
# Replaceing Setter/Getter methods we've been using so far

# Getter/Setter methods for attributes
class Dog
  def initialize(name, age, favorite_food)
    @name = name
    @age = age
    @favorite_food = favorite_food
  end

  # getters
  def name
    @name
  end

  def age
    @age
  end

  # setters
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end
end

# attr_reader
# Creates getter methods for the attributes
class MyClass
  attr_reader :attribute_1
  # ...
end
# It would result in this getter method being defined under the hood:
class MyClass
  # ...
  def attribute_1
    @attribute_1
  end
end


# attr_writer
# # Creates setter methods for the attributes
class MyClass
  attr_writer :attribute_1
  # ...
end
# It would result in this setter method being defined under the hood:
class MyClass
  # ...
  def attribute_1=(new_val)
    @attribute_1 = new_val
  end
end

# attr_accessor
# Creates BOTH GETTER & SETTER methods of attributes
# combination of attr_reader and attr_writer
class MyClass
  attr_accessor :attribute_1
  # ...
end
# It would result in this setter method being defined under the hood:
class MyClass
  # ...
  def attribute_1
    @attribute_1
  end
  
  def attribute_1=(new_val)
    @attribute_1 = new_val
  end
end
