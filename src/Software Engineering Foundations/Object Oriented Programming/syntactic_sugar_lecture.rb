# class Person

#     attr_reader :first_name, :last_name, :age

#     def initialize(first_name, last_name, age)
#         @first_name = first_name
#         @last_name = last_name
#         @age = age        
#     end

#     def ==(other_person)
#         self.last_name == other_person.last_name
#     end

#     def >(other_person)
#         self.age > other_person.age
#     end
# end

# person_1 = Person.new("Jane", "Doe", 20)
# person_2 = Person.new("John", "Doe", 18)
# person_3 = Person.new("John", "Wayne", 25)

# p person_1.==(person_2) # true
# p person_1 == person_2  # Syntactic sugar - adds readability - true

# p person_2 == person_3 # false

# p person_1 > person_2 # true
# p person_2 > person_3 # false

class Queue
    def initialize
        @line = []
    end

    def [](position)
        @line[position]
    end

    def []=(position, element)
        @line[position] = element
    end

    def add(ele)
        @line << ele # add ele to the back of line
    end

    def remove
        @line.shift # remove front ele of line
    end
end

checkout = Queue.new
checkout.add("Neha")
checkout.add("Neeraj")

# p checkout.ele_at_position(0) # "Neha"
# p checkout.ele_at_position(1) # "Neeraj"

p checkout.[](0) # "Neha"
p checkout.[](1) # "Neeraj"

p checkout[0] # Syntactic Sugar - "Neha"
p checkout[1] # Syntactic Sugar - "Neeraj"

p checkout[2] = "Sanket" # Syntactic Sugar 
p checkout #<Thread::Queue:0x00000000052fc218 @line=["Neha", "Neeraj", "Sanket"]>
