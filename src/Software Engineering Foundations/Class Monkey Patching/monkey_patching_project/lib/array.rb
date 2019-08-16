# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.length == 0
        self.max - self.min
    end

    def average
        return nil if self.length == 0
        return nil if self.any? { |el| el.is_a?(Integer) == false } # check if every element of array is an integer
        len_in_float = self.length.to_f
        self.sum / len_in_float
    end

    def median
        self.sort
        length = self.length
        return nil if length == 0
        if length % 2 == 0
            (self.sort[length / 2] + self.sort[(length / 2) - 1]) / 2.0
        else
            self.sort[length / 2]
        end
    end

    def counts
        hash = Hash.new(0)
        self.each { |el| hash[el] += 1 }
        hash
    end

    def my_count(element)
        count = 0
        self.each { |num| count += 1 if num == element}
        count
    end

    def my_index(element)
        self.each_with_index do |num, idx|
            if num == element
                return idx
            end
        end
        nil
    end

    def my_uniq
        unique = []
        self.each do |el|
            if !(unique.include?(el))
                unique << el
            end
        end
        unique
    end

    def my_transpose
        transposed = Array.new(self.length) { Array.new(self.length) }
        self.each_with_index do |arr, i|
            self[i].each_with_index do |el, j|
                transposed[j][i] = el
            end
        end 
        transposed
    end
end
