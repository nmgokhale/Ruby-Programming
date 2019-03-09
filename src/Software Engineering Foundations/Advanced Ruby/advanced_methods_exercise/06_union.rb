# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

# Optimized Solution
def union(*arr)
    arr.inject {|acc, array| acc + array}
end 

# def union(arr1, *arr2)
#     arr_union = [*arr1]
#     arr2.each do |el|
#         arr_union.push(*el)
#     end
#     arr_union
# end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
