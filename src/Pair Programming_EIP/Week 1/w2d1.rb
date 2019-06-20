# Write a method to generate a random integer (0...7), given a method that generates a random integer between (0...5). The resulting rand7 distribution must be uniform.

# Method Signature
# rand7()

# Assume that the function for generating a random number between 0-5 is named rand5()

# Example input/output
# rand7() // = random number between 0-7 with equal probability

# 0 1 2 3 4 <-- rand5()
# 0 5 10 15 20 <-- rand5() * 5
# 0..25 <-- rand5() * 5 + rand5()


# 0 1 2 3 4 5 6 7 8 9 10 11 12 => % 7
# 0 1 2 3 4 5 6 0 1 2 3   4  5 6 ...

def rand7()
  random = (rand(5) * 5) + rand(5)
  while random > 21
    random = (rand(5) * 5) + rand(5)
  end
  (random) % 7
end


7.times{ p rand7() }
