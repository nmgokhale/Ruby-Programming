class Array
    def my_each(&prc)
        i = 0
        self.length.times do |idx|
            prc.call(self[idx])
        end
        self
    end

    def my_select(&prc)
        filtered = []
        self.my_each do |el|
            if prc.call(el)
                filtered << el
            end
        end
        filtered
    end

    def my_reject(&prc)
        filtered = []
        self.my_each do |el|
            if ! prc.call(el)
                filtered << el
            end
        end
        filtered
    end

    def my_any?(&prc)
        self.my_each do |el|
            if prc.call(el)
                return true
            end
        end
        false
    end

    def my_all?(&prc)
        self.my_each do |el|
            if !prc.call(el)
                return false
            end
        end
        true
    end

    def my_flatten
        flattened = []        
        self.my_each do |el|
            p el
            if el.is_a?(Array)
                p el.my_flatten
                flattened += el.my_flatten
            else
                flattened << el
            end
        end
        flattened
    end

    def my_zip(*arrays)
        zipped = []
        # arrays.my_each { |arr| p arr }
        (0...self.length).each do |idx|
            subArr = []
            subArr << self[idx]
            arrays.my_each { |arr| subArr << arr[idx]}
            zipped << subArr
        end
        zipped
    end

    def my_rotate(num = 1)
        rotated = []
        # Positive - [(self.length + curr_idx) - num] % self.length
        # Negative - (curr_idx + num.abs) % self.length
        if num == 0
            self 
        else
            (0...self.length).each do |idx|
                if num > 0 
                    new_idx = ((self.length + idx) - num) % self.length
                else
                    new_idx = (idx + num.abs) % self.length
                end
                rotated[new_idx] = self[idx]
            end
            rotated
        end
    end

    def my_rotate_in_place(num = 1)
        if num == 0
            return self
        end
        if num < 0
             num = num % self.length 
        end
        num.times do 
            self << self.shift
        end
        self
    end

    def my_join(separator = "")
        converted_str = ""
        self.each_with_index do |el, idx|
            converted_str << el  # << is preferred over += because it modifies the string in place rather than creating a new string
            converted_str << separator if idx != (self.length-1)
        end
        converted_str
    end

    def my_reverse
        reversed = []
        i = self.length - 1
        j = 0
        while i >= 0
            reversed[j] = self[i]
            j += 1 
            i -= 1
        end
        reversed
    end
end