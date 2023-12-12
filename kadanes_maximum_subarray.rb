# @param {Integer[]} nums
# @return {Integer}
# https://leetcode.com/problems/maximum-subarray/solutions/4394322/kadane-s-ruby-solution-explained/
def max_sub_array(nums)
max_global = max_current = nums[0]

(1).upto(nums.size-1).each do |i|
    max_current = [nums[i], max_current+nums[i]].max
    max_global = [max_current, max_global].max
end

max_global

end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])