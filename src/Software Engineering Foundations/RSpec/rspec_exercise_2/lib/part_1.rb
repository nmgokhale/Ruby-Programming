def partition(array, num)
    less = []
    greater = []
    array.each do |el|
        less << el if el < num
        greater << el if el >= num
    end
    [less, greater]
end

def merge(hash1, hash2) # check solution
    hash1.merge(hash2) 
end

def censor(sentence, array)
    vowels = "aeiou"
    words = sentence.split(" ")
    words.each do |word|
        if array.include?(word.downcase)
            word.downcase.each_char.with_index do |char, idx|
                if vowels.include?(char)                    
                    word[idx] = "*"
                end
            end
        end
    end
    words.join(" ")
end

def power_of_two?(num)
    return true if num == 1
    while num / 2 != 1
        num = num / 2
        if num % 2 != 0
            return false
        end
    end
    true
end