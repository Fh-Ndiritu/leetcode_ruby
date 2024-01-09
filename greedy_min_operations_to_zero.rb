# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    nums = nums.uniq.select{|i| i > 0}.sort
    return 0 unless !nums.empty?

    diffed = 0 
    max = nums.last 

    i = 0 
    while max > 0 
        val = nums[i]-diffed
        max -= val
        diffed = nums[i]
        i += 1
    end

    return i 
    
end
p minimum_operations([1,3,2,2,3,4,1,1,4])
p minimum_operations([0, 0 ])
p minimum_operations([1,5,0,3,5])
p minimum_operations([1, 2, 3, 4, 5])