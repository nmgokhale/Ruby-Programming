# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
# Find LCM by Prime Factorization
# For example, for LCM(12,30) we find:
# Prime factorization of 12 = 2 * 2 * 3 = 2^2 * 3^1 * 5^0
# Prime factorization of 30 = 2 * 3 * 5 = 2^1 * 3^1 * 5^1
# Using the set of prime numbers from each set with the highest exponent value we take 22 * 31 * 51 = 60
# Therefore LCM(12,30) = 60.
def least_common_multiple(num_1, num_2)   # Important
    num_1_prime = find_prime_factors(num_1)
    num_2_prime = find_prime_factors(num_2)
    lcm = 1
    num_1_prime.each do |k, v|
        greater_power = v > num_2_prime[k] ? v : num_2_prime[k]
        num_2_prime.delete(k)  # delete key-val pair from num_2_prime
        lcm = lcm * (k ** greater_power)
    end

    # if num_2_prime is not empty, add their key-value in lcm
    if !num_2_prime.empty?
        num_2_prime.each do |k, v|
            lcm = lcm * (k ** v)
        end
    end
    lcm
end

def find_prime_factors(num)
    hash = Hash.new(0)
    return hash if num < 0
    # see if num is even
    while num % 2 == 0
        hash[2] += 1
        num = num / 2
    end

    # num is odd
    i = 3
    while i <= Math.sqrt(num).to_i || num > 1
        while num % i == 0
            hash[i] += 1
            num = num / i
        end
        i += 2
    end
    hash
end

# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    i = 0
    count = Hash.new(0)
    while i < str.length-1
        j = i + 1
        if str[j+1...str.length].include?(str[i..j])
            x = j + 1
            while x < str.length-1
                y = x + 1
                if str[x..y] == str[i..j]
                    count[str[i..j]] += 1
                end
                x += 1 
            end
        end
        i += 1
    end
    count.key(count.values.max)  # Get the key having max value
end

p most_frequent_bigram("thethrillofit")#("th")
p most_frequent_bigram("gotothemoonsoonforproof")#("oo")
p most_frequent_bigram("bananasareanotherfruit")#("an")

class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        duplicate = Hash.new()
        self.each do |k, v|
            duplicate[v] = k
        end
        duplicate
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        i = 0
        pairs = Hash.new(0)
        while i <= self.length - 2
            j = i + 1
            while j <= self.length - 1
                if self[i] + self[j] == num
                    key = self[i].to_s+ self[j].to_s
                    pairs[key] += 1
                end
                j += 1
            end             
            i += 1
        end
        pairs.keys.length
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        sorted = false
        if prc.nil?  # Important - if no proc is given            
            while !sorted
                sorted = true
                i = 0 
                while i < self.length-1
                    j = i + 1
                    if self[i] > self[j]
                        self[i], self[j] = self[j], self[i]
                        sorted = false
                    end
                    i += 1
                end
            end
        else
            while !sorted
                sorted = true
                i = 0
                while i < self.length-1
                    j = i + 1
                    if prc.call(self[i], self[j]) == 1
                        self[i], self[j] = self[j], self[i]
                        sorted = false
                    end
                    i += 1
                end
            end
        end
        self
    end
end

p [1, 2, 1, 3, 8].pair_sum_count(5)#(1)
p [10, 3, 6, 5, 7].pair_sum_count(13)#(2)
p [10, 3, 6, 5, 7].pair_sum_count(4)#(0)

p [4, 12, 2, 8, 1, 14, 9, 25, 24, 81].bubble_sort { |a, b| a.to_s <=> b.to_s }

# [1, 12, 14, 2, 24, 25, 4, 8, 81, 9]