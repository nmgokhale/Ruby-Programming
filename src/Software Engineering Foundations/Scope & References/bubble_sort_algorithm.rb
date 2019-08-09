# Bubble Sort - 
# Let's see one pass of bubble sort on the array [2, 8, 5, 2, 6]. On each step, the elements currently being scanned are in bold.

# 2, 8, 5, 2, 6 - 2, 8 ordered, so leave them alone
# 2, 8, 5, 2, 6 - 8, 5 not ordered, so swap
# 2, 5, 8, 2, 6 - 8, 2 not ordered, so swap
# 2, 5, 2, 8, 6 - 8, 6 not ordered, so swap
# 2, 5, 2, 6, 8 - our first pass is complete
# By the end of this pass we have correctly placed 8 by "bubbling it up" to the end of the array.

# Swapping elements in Ruby 
# array = ["a", "b", "c", "d"]    # let's swap "a" and "b"
# array[0], array[1] = array[1], array[0]
# p array         # => ["b", "a", "c", "d"]

def bubble_sort(array)
    sorted = false # when this var is false, that means the array is not fully sorted yet
    while !sorted    # while the array is not sorted...
        sorted = true   # reset the sorted flag to true 

        # the each below will perform a single 'pass' of bubble sort
        (0...array.length-1).each do |i|
            if array[i] > array[i+1]                         # if adjacent elements are out of order...
                array[i], array[i+1] = array[i+1], array[i]  #   then swap their positions
                sorted = false                   # since we just made a swap, we may need to perform
            end                                  # an additional 'pass', so set the flag to false
        end    
    end
    array
end

p bubble_sort([100, 78, 89, 94])