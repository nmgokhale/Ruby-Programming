array = [1, 2, 3]
p array.map { |num| num * 2 } # [2, 4, 6]

# my_block = { |num| num * 2 } # Error - can't store block into a variable

# Creating a proc
my_proc = Proc.new { |num| num * 2 }
p my_proc #<Proc:0x000000000545d580@./procs_examples.rb:6>

# Calling a proc
p my_proc.call(3) # 6

def add_and_proc(num1, num2, proc)
    sum = num1 + num2
    p proc.call(sum)
end

doubler = Proc.new { |num| num * 2 }
add_and_proc(2, 3, doubler) # 10

negate = Proc.new { |num| -1 * num }
add_and_proc(6, 3, negate) # -9

# Proc auto-converted to block using &
# Ruby shortcuts
#  & convert block into proc
def add_and_proc(num1, num2, &proc)
    sum = num1 + num2
    p proc.call(sum)
end
add_and_proc(2, 3) { |num| num * 2 } # 10


