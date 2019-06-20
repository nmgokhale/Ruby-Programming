def digital_root(num)
    sum = num
    while sum.digits.length > 1
      sum = calculate_sum(sum)
    end
    return sum
end

def calculate_sum(num)
  array = num.digits
  i = 0
  sum = 0
  while i < array.length
    sum = sum + array[i]
    i += 1
  end
  return sum
end

puts digital_root(103)
puts  digital_root(999)
puts digital_root(728934)
