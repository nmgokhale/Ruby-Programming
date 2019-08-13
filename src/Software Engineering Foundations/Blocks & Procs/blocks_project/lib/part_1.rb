def select_even_nums(array)
    array.select { |num| num % 2 == 0 }
end

def reject_puppies(array)
    array.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
    array.count { |arr| arr.sum > 0 }
end

def aba_translate(word)
    vowels = "aeiouAEIOU"
    arr = word.split("")
    translated = arr.map do |char|
        if vowels.include?(char)
            char = char + "b" + char
        else
            char
        end
    end
    translated.join("")
end

def aba_array(array)
    array.map { |word| aba_translate(word) }
end