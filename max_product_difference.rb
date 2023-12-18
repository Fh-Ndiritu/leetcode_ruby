# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
    max =  nums.max(2)
    min = nums.min(2)
    max.reduce(:*) - min.reduce(:*)
end

p max_product_difference([5,6,2,7,4])
p max_product_difference([4,2,5,9,7,4,8])