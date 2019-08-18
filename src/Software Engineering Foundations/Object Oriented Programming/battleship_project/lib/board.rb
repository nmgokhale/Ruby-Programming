class Board

    attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n, :N) } # Important
        @size = n * n
    end

    def [](position)
        @grid[position[0]][position[1]]
    end

    def []=(position, value)
        @grid[position[0]][position[1]] = value
    end

    def num_ships
        count = 0
        @grid.each do |subArray|
            count += subArray.count { |el| el == :S}
        end
        count
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            p "you sunk my battleship!"
            true
        else
            self[position] = :X
            false
        end 
    end

    def place_random_ships # V. V. Important
        no_of_ships = @size * 0.25
        flattened_arr = @grid.flatten
        random_nos = []
        while no_of_ships > 0
            random = rand(0...flattened_arr.length)
            if !random_nos.include?(random)
                random_nos << random
                flattened_arr[random] = :S
                no_of_ships -= 1
            end            
        end
        @grid = flattened_arr.each_slice(@grid.length).to_a
    end

    def hidden_ships_grid
        hidden_ships = @grid.flatten.map do |el|
            if el == :S 
                el = :N
            else
                el
            end
        end
        hidden_ships = hidden_ships.each_slice(@grid.length).to_a
        hidden_ships
    end

    def self.print_grid(grid)
        grid.each do |array|
            array.each_with_index do |element, i|
                print element
                if i != array.length - 1  # don't leave space after last element in a row
                    print " "
                end                
            end
            puts
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end

end
