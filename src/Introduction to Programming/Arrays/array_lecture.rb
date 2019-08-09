# Arrays
# puts iterates through the array and only displays elements
# print - prints the array as it is
letters = ["a", "b", "c"]
puts letters # a b c
print letters # ["a", "b", "c"]
puts letters.length # 3

# Arrays can have different datatypes
my_arr = ["Neha", true, false, 13]
print my_arr[2] # false

# Ignores the line breaks in array definition when you use print
names = [
  "Neha",
  "Neeraj",
  "Rahul"
]
print names # ["Neha", "Neeraj", "Rahul"]
print "\n" # break a line

# Shovel - to add an element at the end of Array
names << "Mahesh"
print names # ["Neha", "Neeraj", "Rahul", "Mahesh"]
print "\n"

names << "Manasi"
print names # ["Neha", "Neeraj", "Rahul", "Mahesh", "Manasi"]
print "\n"

# To update an element within an existing Array
names[0] = "Trupti"
print names # ["Trupti", "Neeraj", "Rahul", "Mahesh", "Manasi"]
print "\n"

# Iterate through an Array
def arrayIterator(arr)
  i = 0
  while i < arr.length
    puts arr[i]
    i += 1
  end
end
foods = ['Ragda Pattice', 'Dahipuri', 'Bhelpuri', 'Misal', 'Paneer Tikka', 'Malai Kofta', 'Pizza']
people = ['Shreya', 'Duhita', 'Vaibhavi', 'Neha']
puts arrayIterator(foods)
puts arrayIterator(people)
