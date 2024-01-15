# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    current = nums[0]
    count = i = 1
    while i < nums.size
        if nums[i] == current 
            count += 1 
            if count > 2 
                last = nums[i..].rindex(nums[i])+i
                nums[i..] = nums[last+1..]
                count = 1
            end
        else 
            count = 1
        end
        current = nums[i]
        i += 1
    end
    
    nums.size
end


p remove_duplicates([0,0,1,1,1,1,2,3,3])
p remove_duplicates([1,1,1,2,2,3])
p remove_duplicates([1])