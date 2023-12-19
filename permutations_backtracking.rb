# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)

    def perm(comb, nums)
        return [comb.dup] if nums.empty?

        combs = []
        nums.each_with_index do |num, i|
            comb << num 
            combs += perm(comb, nums[0...i]+nums[i+1..])
            comb.pop
        end

        return combs
    end

    perms = []

    nums.each_with_index do |num, i|
        perms += perm([num], nums[0...i] + nums[i+1..])
    end
    
    perms

end


p permute([1,2,3])