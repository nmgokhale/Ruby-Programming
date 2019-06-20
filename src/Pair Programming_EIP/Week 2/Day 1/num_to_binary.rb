# Write a function that takes an integer and returns it in binary form.
#
# Bonus points: How could you represent & support negative numbers?
#
# Method Signature
# binary(integer num)
#
# Example input/output
# > binary(10) // = 1010
#
# > binary(0) // = 0
#
# > binary(666) // = 1010011010

def binary(num)
  if num < 0
    positiveNumBinary = calculate_binary(num.abs, 'negative')
  else
    return calculate_binary(num, 'positive')
  end

end

def calculate_binary(num, signFlag)
  binary_arr = []
  while num != 0
    binary_arr.unshift(num % 2)
    num = num / 2
  end

  if(signFlag == 'negative')
    binary_arr.each_with_index do |ele, idx|
      # reeverse the bits
      binary_arr[idx] = (ele + 1) % 2
    end
    p binary_arr
  else
    binary_arr.join.to_i
  end
end

# p binary(10) # 1010
# p binary(0) # 0
# p binary(666) # 1010011010
p binary(-6)
