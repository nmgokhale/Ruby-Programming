# Abstraction
# process of exposing essential features of an object while hiding inner details 
# that are not necessary to using the feature

# Following class DOES NOT abstract student enrollment
class Course
  def initialize(name, teachers, max_students)
    @name = name
    @teachers = teachers
    @max_students = max_students
    @students = []
  end

  def max_students
    @max_students
  end

  def students
    @students
  end
end  

course = Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)

# Let's to enroll a student - not abstracted
if course.students.length < course.max_students
  course.students << "Alice"
end


# Following class abstracted enroll method
class Course
  def initialize(name, teachers, max_students)
    @name = name
    @teachers = teachers
    @max_students = max_students
    @students = []
  end

  def enroll(student)
    @students << student if @students.length < @max_students
  end
end  

course = Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)

# Let's to enroll a student
course.enroll("Alice")

# Encapsulation -
# if we create a class with attributes, 
# those attributes are inaccessible from the outside unless define getter or setter methods too

# Example - Queue class
# The rules of a Queue are simple: if you are the first one in, then you are also the first one out. 
# No cutting the line! 
# More programmatically, we remove from the front of the line, but we add to the back of the line
class Queue
  def initialize
    @line = []
  end

  def add(ele)
    @line << ele # add ele to back of line
    nil
  end

  def remove
    @line.shift  # remove front ele of line
  end
end

grocery_checkout = Queue.new

grocery_checkout.add("bob")
grocery_checkout.add("alice")
grocery_checkout.remove          # => "bob"
grocery_checkout.add("noam")
grocery_checkout.add("donald")
grocery_checkout.remove          # => "alice"
grocery_checkout.remove          # => "noam"
grocery_checkout.remove          # => "donald"

# people who are added first to the line will leave first!