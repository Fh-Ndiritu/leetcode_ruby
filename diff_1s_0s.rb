# @param {Integer[][]} grid
# @return {Integer[][]}
# https://leetcode.com/problems/difference-between-ones-and-zeros-in-row-and-column/solutions/4403891/ruby-transpose-o-n-m-solution-explained/
def ones_minus_zeros(grid)
    def get_tally(arr)
        return arr.each_with_index.with_object({}){|(row, i), arr| arr[i] = row.tally }
    end

    rows = get_tally(grid)
    columns = get_tally(grid.transpose)

    weights = []

    rows.each do |i, row| #O(m)
        weights << []
        columns.each do |j, col|  #O(n)
            diff = row[1].to_i+col[1].to_i-row[0].to_i-col[0].to_i
            weights[-1] << diff
        end
    end

    weights


    
end

# p ones_minus_zeros([[0,1,1],[1,0,1],[0,0,1]])
p ones_minus_zeros([[1,1,1]])