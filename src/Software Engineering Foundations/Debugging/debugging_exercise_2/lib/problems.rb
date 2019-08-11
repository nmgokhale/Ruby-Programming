# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def largest_prime_factor(num)
    i = num - 1
    while i >= 2
        if num % i == 0 && is_prime?(i) == true
            return i
        end
        i -= 1
    end
    num
end

def is_prime?(num)
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    true
end

def unique_chars?(str)
    existingChars = []
    str.downcase.each_char do |char|
        if existingChars.include?(char)
            return false
        else
            existingChars << char
        end
    end
    true
end

def dupe_indices(array)
    duplicates = {}
    count = Hash.new(0)
    array.each do |char|
        if count.has_key?(char)
            count[char] += 1
        else
            count[char] = 1
        end
    end
    array.each_with_index do |char, idx|
        if count[char] > 1
            if duplicates.has_key?(char)
                duplicates[char] << idx
            else
                duplicates[char] = [idx]
            end
        end        
    end
    duplicates
end

def ana_array(array1, array2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    array1.each do |el|
        if hash1.has_key?(el)
            hash1[el] += 1
        else
            hash1[el] = 1
        end
    end

    array2.each do |el|
        if hash2.has_key?(el)
            hash2[el] += 1
        else
            hash2[el] = 1
        end
    end

    if hash1 == hash2
        true
    else
        false
    end
end