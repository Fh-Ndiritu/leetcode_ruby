# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    nums = num.to_s.chars.sort
    one = nums[0]+nums[2]
    two = nums[1]+nums[3]
    one.to_i+two.to_i
end

p minimum_sum(2932)