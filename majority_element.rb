# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    return nums[0] if nums.length < 2
    midpoint = (nums.length.to_f / 2).round
    tally_hash = {}

    nums.each do |num|
        if tally_hash[num]
            tally_hash[num] += 1
            return num if tally_hash[num] >= midpoint

        else
            tally_hash[num] = 1
        end
    end

end


def majority_element(nums)
    nums.tally.sort_by{|k, v| v}.last[0]
end
p majority_element([2,2,1,1,1,2,2])