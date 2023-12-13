# @param {Integer[][]} mat
# @return {Integer}
# https://leetcode.com/problems/special-positions-in-a-binary-matrix/solutions/4398811/using-tranpose-method-in-ruby-o-m/
def num_special(mat)
  columns = mat.transpose
  specials = 0 

  mat.each do |row|
    if row.sum == 1 && columns[row.index(1)].sum == 1
        specials +=1 
    end
  end
  specials
  
end
p num_special([[0,0,0,0, 0,1, 0,0],[0,0,0,0, 1,0, 0,1],[0,0,0,0, 1,0, 0,0],[1,0,0,0, 1,0 ,0,0],[0,0,1,1, 0,0, 0,0]])

p num_special([
    [0,0,0,1],
    [1,0,0,0],
    [0,1,1,0],
    [0,0,0,0]
])
p num_special([[1,0,0],[0,1,0],[0,0,1]])
p num_special([[1,0,0],[0,0,1],[1,0,0]])