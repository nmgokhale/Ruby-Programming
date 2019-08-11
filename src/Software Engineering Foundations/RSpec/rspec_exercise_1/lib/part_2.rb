def hipsterfy(word)
    vowels = "aeiou"
    word = word.reverse
    (0..word.length-1).each do |idx|
        if vowels.include?(word[idx])
            word.slice!(idx)
            return word.reverse
        end 
    end
    word.reverse
end

def vowel_counts(str)
    count = Hash.new(0)
    vowels = "aeiou"
    str = str.downcase
    (0..str.length-1).each do |idx|
        if vowels.include?(str[idx])
            count[str[idx]] = count[str[idx]] + 1
        end
    end
    count
end

def caesar_cipher(msg, num)
    alphabets = "abcdefghijklmnopqrstuvwxyz"
    msg = msg.downcase
    ans = ""
    (0..msg.length-1).each do |i|
        if alphabets.include?(msg[i])
            currentIndex = alphabets.index(msg[i])
            if currentIndex + num <= 25
                newIndex = currentIndex + num
            else
                newIndex = (currentIndex + num) % 26
            end
            ans = ans + alphabets[newIndex]
        else
            ans += msg[i]
        end        
    end
    ans
end