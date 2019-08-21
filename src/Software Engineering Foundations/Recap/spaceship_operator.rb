# Spaceship Operator - <=>
# The spaceship operator <=> is used between two values and will return -1, 0, or 1. 
# The behavior is as follows:

# given the expression a <=> b
# it will return -1 if a is less than b
# it will return 0 if a is equal to b
# it will return 1 if a is greater than b

p 7 <=> 2     # => 1
p 7 <=> 7     # => 0
p 2 <=> 7     # => -1
p 10 <=> 2    # => 1
p -5 <=> 10   # => -1
p -3 <=> -9   # => 1

# Toy method
def compare(a, b)
    if (a <=> b) == -1
        p 'a is less than b'
    elsif (a <=> b) == 1
        p 'a is greater than b'
    else
        p 'a is equal to b'
    end
end

compare(-3, 10)
compare(-4.5, -5)
compare(12, 12)

# bubble sort
def bubble_sort(array)
    sorted = false
    while sorted == false
        sorted = true
        (0...array.length-1).each do |idx|
            if array[idx] > array[idx+1]
                array[idx], array[idx+1] = array[idx+1], array[idx]
                sorted = false
            end
        end
    end
    array
end

# bubble sort - using spaceship operator


p bubble_sort([10, 0, 5, 7, 3])
p bubble_sort([10, 9, 8, 7, -10])