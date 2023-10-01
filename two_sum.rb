def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |value, index|
        comp = hash[target - value]
        if(comp)
            return [comp, index]
        else
            hash[value] = index
        end
    end 
    
end

p two_sum([3,3], 6)