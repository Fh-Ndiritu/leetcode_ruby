# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_water = 0
  left = 0
  right = height.size - 1

  while left < right 
    h = [height[left], height[right]].min
    w = right - left
    max_water = [max_water, h*w].max
    if height[left] < height[right]
        left += 1
    else
        right -= 1
    end
  end

  return max_water
end


p max_area([1,8,6,2,5,4,8,3,7])
p max_area([1,8,6,2,5,4,8,3,7])
p max_area([1,2,1])
p max_area([1,2,4,3])