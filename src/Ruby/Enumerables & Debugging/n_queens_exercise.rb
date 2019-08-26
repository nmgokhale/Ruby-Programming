def solve_n_queen(n)
    
end

def get_all_diagonals(row, column, n)
    diagonals = 
    right_upper_diagonals(row, column,n) +
    right_lower_diagonals(row, column, n) +
    left_upper_diagonals(row, column, n) +
    left_lower_diagonals(row, column, n)
    diagonals
end

def right_upper_diagonals(row, column,n)
    diagonals = []
    while row < (n-1) && column < (n-1) 
        diagonals << [row += 1, column += 1]
    end
    diagonals
end

def right_lower_diagonals(row, column, n)
    diagonals = []
    while row > 0 && column < (n-1)
        diagonals << [row-=1, column+=1]
    end
    diagonals
end

def left_upper_diagonals(row, column, n)
    diagonals = []
    while row < (n-1) && column > 0
        diagonals << [row += 1, column -= 1]
    end
    diagonals
end

def left_lower_diagonals(row, column, n)
    diagonals = []
    while row > 0 && column > 0 
        diagonals << [row -= 1, column -= 1]
    end
    diagonals
end


