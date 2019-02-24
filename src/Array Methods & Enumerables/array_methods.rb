# << adds an element at the end of an array
# array.push() adds an element(s) at the end of array, evaluates to the array
#  array.push can push multiple elements whereas shovel (<<) can be used to push only 1 element

# array.pop() removes the last element from an array, evaluates to the element that was removed

# array.unshift adds an element to the front of array, evaluates to the array
# array.shift removes first element from the array, evaluates to the element that was removed

# array/string.index(element) - evaluates to the index where element is found
# array/string.include?(element) - evaluates to the boolean indicating if element is found

# array/string.reverse - evaluates to a new reversed version of the array or string
# array/string.reverse! - reverses an array/string in place

# array/string slicing
# array[startIndex..endIndex] - grabs elements from startIndex to endIndex (inclusive)
# array[startIndex...endIndex] - grabs elements from startIndex to endIndex (excluding the element at endIndex)
# You can use negative indexes in slicing for eg. arr = ["Neha", "Neeraj", "Rahul"] --> arr[-1] = "Rahul", arr[-2] = "Neeraj"

# string.split evaluates to an array --> split always ignores the word or character you're splitting on
# array.join evaluates to a string

arr = ["Neha", "Neeraj", "Rahul"]
print arr
puts
arr << "Mahesh"
print arr   # ["Neha", "Neeraj", "Rahul", "Mahesh"]
puts
puts "--------------"

arr1 = ["Neha", "Neeraj", "Rahul"]
print arr1
puts
arr1.push("Mahesh", "Manasi")
print arr1  # ["Neha", "Neeraj", "Rahul", "Mahesh", "Manasi"]
puts
puts "--------------"

arr2 = ["Neha", "Neeraj", "Rahul"]
print arr2.pop() # Rahul
puts
print arr2 # ["Neha", "Neeraj"]
puts
puts "--------------"

arr3 = ["Neha", "Neeraj", "Rahul"]
print arr3.unshift("Mahesh") # ["Mahesh", "Neha", "Neeraj", "Rahul"]
puts
puts "--------------"

arr4 = ["Neha", "Neeraj", "Rahul"]
print arr4.shift() # Neha
puts
print arr4 # ["Neeraj", "Rahul"]
puts
puts "--------------"

arr5 = ["SF", "NY", "LA"]
print arr5.index("LA") # 2
puts
print arr5.index("NJ") # prints nothing because "NJ" is not present in the given array
puts
puts "--------------"

arr6 = ["SF", "NY", "LA"]
print arr6.include?("NJ") # false
puts
print arr6.include?("LA") # true
puts
puts "--------------"

str = "Hello"
print str.include?("e") # true
puts
print str.include?("E") # false -- Ruby is case-sensitive
puts
print str.include?("ello") # true -- you can use this to check if the string includes a substring
puts
puts "--------------"

str = "Hello"
print str.index("z") # prints nothing because character z doesn't exist in str
puts
print str.index("e") # 1
puts
print str.index("ello") # 1 - returns the starting index of substring
puts
puts "--------------"

arr7 = [1, 2, 3, 4]
print arr7 # [1, 2, 3, 4]
puts
print arr7.reverse # [4, 3, 2, 1]
puts
print arr7 # [1, 2, 3, 4] -- arr.reverse doesn't change the original array, if you need to save the reversed array,
puts          # you'll have to use arr.reverse! OR you'll have to save it in a new variable on line #86
puts "--------------"

arr8 = [1, 2, 3, 4]
print arr8 # [1, 2, 3, 4]
puts
print arr8.reverse! # [4, 3, 2, 1]
puts
print arr8 # [4, 3, 2, 1] -- arr.reverse! will change the original array to reversed array in place!
puts
puts "--------------"

str1 = "Hello"
puts str1.reverse # olleH
puts str1 # Hello
puts "--------------"

str2 = "Hello"
puts str2.reverse! # olleH
puts str2 # olleH
puts "--------------"

arr9 = ["a", "b", "c", "d", "e", "f"]
print arr9[1..3] # ["b", "c", "d"]
puts
puts "--------------"
print arr9[1...3] # ["b", "c"]
puts
puts "--------------"

str3 = "bootcamp"
print str3[1..3] # oot
puts
puts "--------------"
print str3[1...3] # oo
puts
puts "--------------"
print str3[3..-1] # tcamp --> -1 corresponds to last character in a string or last element in an array
puts
puts "--------------"
print str3[3..-2] # tcam --> -2 corresponds to 2nd last character in a string or last element in an array
puts
puts "--------------"

# string.split()
str4 = "follow the yellow brick road"
print str4.split("the") # ["follow ", " yellow brick road"] --> split always ignores the word or character you're splitting on
puts
print str4.split("y") # ["follow the ", "ellow brick road"] --> split always ignores the word or character you're splitting on
puts
print str4.split("") # ["f", "o", "l", "l", "o", "w", " ", "t", "h", "e", " ", "y", "e", "l", "l", "o", "w", " ", "b", "r", "i", "c", "k", " ", "r", "o", "a", "d"]
puts
print str4.split(" ") # ["follow", "the", "yellow", "brick", "road"] --> to save this you'll have to store it in a variable
puts
print str4 # follow the yellow brick road --> origin string is unchanged after using split()
puts
puts "--------------"

# array.join
arr10 = ["Hello", "world", "how", "are", "you"]
print arr10.join(" ") # Hello world how are you
puts
print arr10.join("_") # Hello_world_how_are_you
puts
puts "--------------"

# str.split & array.join combined
str5 = "follow the yellow brick road"
print str5.split("l") # ["fo", "", "ow the ye", "", "ow brick road"]
puts
print str5.split("l").join("Z") # foZZow the yeZZow brick road
puts
puts "--------------"
