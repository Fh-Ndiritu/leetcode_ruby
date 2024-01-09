def jump(nums)
    maxreach = steps = current_position = 0

    while current_position < nums.size - 1
        steps += 1
        maxreach = current_position + nums[current_position]

        return steps if maxreach >= nums.size - 1

        next_position = (current_position + 1...maxreach + 1).max_by { |i| i + nums[i] }
        current_position = next_position
    end

    steps
end

# p jump([2, 3, 1])
# p jump([1, 1, 1, 1, 1])
# p jump([2,3,1,1,4])
# p jump([2,3,0,1,4])
p jump([1])