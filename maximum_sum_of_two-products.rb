# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    nums.sort!
    return (nums[-1]-1) * (nums[-2] - 1)
end

def max_product(nums)
    nums.max(2).inject(1){|res, num| res*(num-1)}
end

p max_product([3, 4, 5, 2])
p max_product([1, 5, 4, 5])
p max_product([1, 1])