def average(num1, num2)
    (num1+num2)/2.0
end

def average_array(array)
    len = array.length
    array.sum / len.to_f
end

def repeat(str, num)
    ans = ""
    num.times {ans = ans << str}
    ans
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sentence)
    array = sentence.split(" ")
    (0..array.length-1).each do |idx|
        array[idx] = array[idx].upcase if idx.even?
        array[idx] = array[idx].downcase if idx.odd?
    end
    array.join(" ")
end