# Creating a class
# to create a class we use the class keyword, big surprise
# the name of a class must begin with a capital letter
# we can define methods within a class
# @ is how we denote a instance variable or attribute of our class.

class Cat
    def initialize(name, age, color)
        @name = name
        @age = age
        @color = color
    end

    # # Getter method 
    # def get_name
    #     @name
    # end

    # Getter methods
    # By convention, getter methods typically have the same name as the attribute they are returning
    def name
        @name
    end

    # Setter method
    def name=(name)
        @name = name
    end

    def age
        @age
    end

    def age=(number)
        @age = number
    end

    def color
        @color
    end

    def color=(color)
        @color = color
    end

    def purr
        if @age > 5
            @name +" goes purrrrrr...."
        else
            "Sorry! you're too small"
        end
    end
end

# Initializing new cats
cat_1 = Cat.new("mani", 27, "brown")
p cat_1 # #<Cat:0x00000000052e10f8 @name="mani", @age="brown", @color=27>

cat_2 = Cat.new("boka", 28, "grey")
p cat_2 # #<Cat:0x00000000052e0ea0 @name="boka", @age="grey", @color=28>

p cat_1.name # "mani"
p cat_2.age # 28

p cat_1.age = 30 
p cat_1.age # 30

cat_1.age = 3
p cat_1.age
p cat_1.purr

p cat_2.age
p cat_2.purr