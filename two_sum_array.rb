# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left_values = {}

    numbers.each_with_index do |value, index|
        looking_for = target - value
        if left_values[looking_for]
            return [left_values[looking_for]+1, index+1]
        else
            left_values[value] = index
        end
    end

end

p two_sum([-1,0], -1) 


require 'benchmark'
