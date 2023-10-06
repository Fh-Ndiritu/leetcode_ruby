# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    n = nums.length
    new_nums = [1]*n

    prefix_product = 1
    (0...n).each do |i|
        new_nums[i] *= prefix_product
        prefix_product *= nums[i]
    end

    suffix_product = 1
    (n-1).downto(0).each do |i|
        new_nums[i] *= suffix_product
        suffix_product *= nums[i]
    end
    new_nums
    
end

p product_except_self([1,2,3,4])