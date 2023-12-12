# @param {Integer[]} nums
# @return {Integer}
# https://leetcode.com/problems/maximum-subarray/solutions/4394322/kadane-s-ruby-solution-explained/
# https://leetcode.com/problems/maximum-subarray/solutions/4394511/ruby-divide-and-conquer-explained/
def max_sub_array(nums)
    max = get_max(nums, 0, nums.size-1)
end

def get_max(arr, left, right)
    return arr[left] if left==right  #base case if only 1 element

    midpoint = (left+right)/2

    left_max = get_max(arr, left, midpoint)   
    right_max= get_max(arr, midpoint+1, right)
    crossing_max = max_crossing_sum(arr, left, midpoint,  right)
    return [left_max, right_max, crossing_max].max

end

def max_crossing_sum(arr, left, mid, right)
    left_sum= -Float::INFINITY

    max_current = 0 
    (mid).downto(left).each do |i|
        max_current += arr[i]
        left_sum = [left_sum, max_current].max
    end

    right_sum= -Float::INFINITY
    max_current=0
    (mid+1).upto(right).each do |i|
        max_current += arr[i]
        right_sum = [right_sum, max_current].max
    end

    return left_sum+right_sum
    

end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
p max_sub_array([5,4,-1,7,8])



# @param {Integer[]} nums
# @return {Integer}
# https://leetcode.com/problems/maximum-subarray/solutions/4394322/kadane-s-ruby-solution-explained/
# def max_sub_array(nums)
# max_global = max_current = nums[0]

# (1).upto(nums.size-1).each do |i|
#     max_current = [nums[i], max_current+nums[i]].max
#     max_global = [max_current, max_global].max
# end

# max_global

# end