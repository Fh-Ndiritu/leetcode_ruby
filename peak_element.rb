def find_peak_element(nums)
    left = 0
    right = nums.length - 1

    while left < right
        midpoint = (left+right)/2
        if nums[midpoint] < nums[midpoint+1]
            left = midpoint+1
        else
            right = midpoint
        end

    end
   
    left 
end




