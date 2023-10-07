# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target, nums)
    left = 0
    window_sum = 0 
    min_len = Float::INFINITY

    nums.each_with_index do |num, right|
        window_sum += num

        while window_sum >= target
            min_len = [min_len, right-left+1].min
            window_sum -= nums[left]
            left += 1
        end

    end


    min_len == Float::INFINITY ? 0 :  min_len
    
end




p min_sub_array_len(7, [2, 3, 1, 2, 4, 3])