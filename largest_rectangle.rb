# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
    max_area = 0 
    stack = []
    heights.each_with_index do |height, i |
        start = i  
        while stack[-1] and stack[-1][1] > height #pop this guy
            index, height_prev = stack.pop()
            new_area = height_prev * (i-index)

            max_area = [max_area, new_area].max
            start = index
        end
        stack << [start, height]

    end


    stack.each do |index, height|
        new_area = height * (heights.size-index)
        max_area = [max_area, new_area].max
    end


    return max_area

end


p largest_rectangle_area([3, 2, 6, 5, 4, 7])
p largest_rectangle_area([2,1,5,6,2,3])
p largest_rectangle_area([4, 2])
p largest_rectangle_area([2, 4])
