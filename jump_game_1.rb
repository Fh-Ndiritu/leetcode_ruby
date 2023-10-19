# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    current_steps = 0
    last_index = nums.length-1

    (0..last_index).each do |i|
        current_steps = [current_steps, i+nums[i]].max

        if current_steps >= last_index
            return true
        elsif current_steps <= i && nums[i] == 0
            return false
        end
    end

    return false

    
end

# p can_jump([0])
# p can_jump([1, 2, 3])
# p can_jump([3,2,1,0,4])
# p can_jump([1,1,0,1])
p can_jump([2,3,1,1,4])
