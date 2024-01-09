# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    nums = num.to_s.chars
    min = nums.min(2)
    max = nums.max(2)
    (min[0]+max[1]).to_i + (min[1]+max[0]).to_i
end

p minimum_sum(2932)