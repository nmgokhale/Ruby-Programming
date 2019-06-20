000 0
001 1
010 2
011 3

100 -4
101 -3
110 -2
111 -1

111 = 1 + 2 + 4

# Under a n-bit system, we have 2^n possible values.
# If there are no negatives, the range of possible values is 0...(2^n)-1
# If there are negatives (under 2's complement), the range of possible values is -2^(n-1) ... 2^(n-1) - 1

# Rule for two’s complement:
# Negative of x is not(x) + 1
# Negative numbers have their MSB (most-significant bit, i.e. their leftmost bit) to be 1

01010 => 10101 + 1 = 10110

# Multiplexor (Mux)

if sel == 0
  return a # a can be 0 or 1
elsif sel == 1
  return b # b can be 0 or 1
end

# a and b are only 1 or 0 (e.g. true or false)

sel = 1
!sel = 0

output = (!sel && a) || (sel && b)

if sel = 1
  output = (0 && a) || (1 && b)
  output = 0 || b
  output = b
elsif sel = 0
  output = (1 && a) || (0 && b)
  output = a || 0
  output = a


a, b

sel = 0 => a
sel = 1 => b

a, b, c, d

sel = 0 => a, b
sel = 1 => c, d

sel = 00 => a
sel = 01 => b
10 => c
11 => d

# ALU

x = 2 = 0010
y = 7 = 0111

# Compute f(x, y) = y - x = 7 - 2 = 5

# ALU Definition of y-x : (000111)
# zx = 0

# nx = 0

# zy = 0

# ny = 1
x = 0010
y = 1000

# f = 1
sum = 1010

# no = 1
sum = 0101 = 1 + 4 = 5
