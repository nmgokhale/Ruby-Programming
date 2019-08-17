# If you want to access variables from another file, make sure 1st alphabet is capital
# eg. var -> not accessible from other files, Var -> accessible from other files

require_relative "./cat.rb"
require_relative "./other_animals/dog.rb"

class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end

    def check_in(guest)
        @guests << guest
    end
end

hotel = PetHotel.new("Animal Inn")

cat_1 = Cat.new("Mau")
cat_2 = Cat.new("Mani")

hotel.check_in(cat_1)
hotel.check_in(cat_2)

p hotel
p Var

dog_1 = Dog.new("Oreo")
dog_2 = Dog.new("Tommy")

hotel.check_in(dog_1)
hotel.check_in(dog_2)

p hotel