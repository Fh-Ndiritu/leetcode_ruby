# @param {Integer[]} nums
# @return {Integer}
# https://leetcode.com/problems/maximum-sum-circular-subarray/solutions/4398433/fully-explained-ruby-solution-using-some-nice-observations/
def max_subarray_sum_circular(nums)

    max_global = max_current = min_global = min_current = sum = nums[0]

    (1).upto(nums.size-1).each do |index|
        max_current = [nums[index], max_current+nums[index]].max
        max_global = [max_current, max_global].max

        min_current = [nums[index], min_current+nums[index]].min 
        min_global  = [min_current, min_global].min
        sum += nums[index]
    end


    return max_global if max_global < 0 
    return [max_global, (sum-min_global)].max
    
end

p max_subarray_sum_circular([5,-3,5])
p max_subarray_sum_circular([1,-2,3,-2])
p max_subarray_sum_circular([-3,-2,-3])