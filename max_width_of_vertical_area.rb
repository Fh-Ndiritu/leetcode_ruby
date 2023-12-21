# @param {Integer[][]} points
# @return {Integer}
# https://leetcode.com/problems/widest-vertical-area-between-two-points-containing-no-points/solutions/4433753/elegant-ruby-explained/
def max_width_of_vertical_area(points)
    diff = 0 
    points.sort.each_cons(2){|curr, nex|  diff = [diff, nex[0] - curr[0]].max}
    diff

end 

p max_width_of_vertical_area([[8,7],[9,9],[7,4],[9,7]])
p max_width_of_vertical_area([[3,1],[9,0],[1,0],[1,4],[5,3],[8,8]])