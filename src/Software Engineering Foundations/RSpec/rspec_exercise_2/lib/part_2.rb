def palindrome?(str)
    return true if str.length == 1
    mid = str.length / 2
    i = 0
    j = str.length-1
    while (i <= mid && j >= mid)
        if str[i] != str[j]
            return false
        end
        i += 1
        j -= 1
    end
    true
end

def substrings(str)
    i = 0
    subStr = []
    while i <= str.length-1 
        j = i
        while j <= str.length-1
            subStr << str.slice(i..j)
            j += 1
        end
        i += 1
    end
    subStr
end

def palindrome_substrings(str)
    subStr = substrings(str)
    ans = []
    subStr.each do |word|
        if word.length > 1
            if palindrome?(word) == true
                ans << word
            end
        end
    end
    ans
end