# @param {Integer[]} nums
# @return {Integer}
def max_subarray_sum_circular(nums)
    max_global = -Float::INFINITY

    i = 0 
    while i < nums.size 
        arr = nums.rotate(i)
        max_current = 0 
        arr.each_with_index do |num, i|
            max_current = [num, max_current+num].max
            max_global = [max_current, max_global].max
        end

        i += 1
    end


    max_global
end

p max_subarray_sum_circular([5,-3,5])