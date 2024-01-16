# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    current = nums[0]
    count = i = 1
    while i < nums.size
        if nums[i] == current 
            count += 1 
            if count > 2 
                k = i+1 
                while nums[k] == nums[i]
                    k += 1
                end
                nums[i..] = nums[k..]
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