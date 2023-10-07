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



def min_sub_array_len(target, nums)
    min_len = Float::INFINITY
    prefix_sum = [0]
    sum = 0
    prefix_sums = nums.each.with_object([0]) { |num, arr| arr << (arr[-1] + num) }
    nums.each_with_index{|num, index| prefix_sum << num+prefix_sum[-1]}
    nums.each_with_index do |num, index|
        right = prefix_sums.bsearch_index { |p_sum| p_sum - prefix_sums[index] >= target }
        min_len = [right - index, min_len].min if right

    end

    min_len == Float::INFINITY ? 0 : min_len
    
end


p min_sub_array_len(11, [1,2,3,4,5])