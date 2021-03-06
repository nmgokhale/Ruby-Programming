# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    repeats = ""
    answer = ""
    (0...str.length).each do |i|
        if str[i] == str[i+1]
            repeats = repeats + str[i]
        else
            if repeats.length != 0
                answer = answer + (repeats.length+1).to_s + repeats[0]
                repeats = ""
            else
                answer = answer + str[i]
            end
        end
    end
    answer
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
