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

def find_peak_element(nums)
    n = nums.length-1
    (0..n).bsearch{|i| i == n || nums[i] > nums[i+1]}
end


https://leetcode.com/problems/find-peak-element/solutions/4153491/beats-100-in-ruby-with-explanation/

