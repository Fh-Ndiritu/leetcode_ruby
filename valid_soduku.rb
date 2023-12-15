board = [["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]

# https://leetcode.com/problems/sudoku-solver/solutions/4407982/ruby-backtracking-explained-o-m-n/

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(grid )
 solve(grid)
 grid
end

def solve(grid, r=0, c=0)
    if r == 9   #last row
        return true
    elsif c == 9  #column overflow
        return solve(grid, r+1, 0) 
    elsif grid[r][c] != "."   #already prefilled
        return solve(grid, r, c+1)
    else
        ('1'..'9').each do |k|  #try every no
            if is_valid?(grid, r, c, k)
                grid[r][c] = k 
                if solve(grid, r, c+1)
                    return true 
                else
                    grid[r][c] = "."  #is invalid if any column fails
                end
            end
        end
        return false

    end
end


def is_valid?(grid, r, c, k)
    k_not_in_row = grid[r].none?{|val| val == k }
    k_not_in_col = grid.none?{|row| row[c] == k}

    sub_rows = (r / 3) * 3...((r / 3) * 3 + 3)
    sub_columns = (c / 3) * 3...((c / 3) * 3 + 3)
    subgrid = grid[sub_rows].map{|row| row[sub_columns]}

    k_not_in_subgrid = subgrid.flatten.none?{|elem| elem == k }

    return k_not_in_col && k_not_in_row && k_not_in_subgrid

end


p solve_sudoku(board)