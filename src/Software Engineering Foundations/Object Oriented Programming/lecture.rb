# attr_reader - defines Getter methods
# attr_writer - defines Setter methods
# attr_accessor - defines both Getter & Setter methods
class Dog

    # attr_reader :name, :age # Generates Getter methods for these attributes
    # attr_writer :name, :age # Generates Setter methods for these attributes
    attr_accessor :name, :age # Gee=nerates both Getter & Setter methods for these attributes

    def initialize(name, age, favorite_food)
        @name = name
        @age = age
        @favorite_food = favorite_food        
    end
end

my_dog = Dog.new("Fiddo", 4, "pizza")
p my_dog.name # "Fiddo"
# p my_dog.favorite_food # undefined method `favorite_food' for #<Dog:0x00000000052850c8>

my_dog.age = 5
p my_dog.age # 5

my_dog.name = "Spot"
p my_dog.name # "Spot"

