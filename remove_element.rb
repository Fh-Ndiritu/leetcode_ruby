def remove_element(nums, val)
    vacant_index = []
    k, q = 0, 0

    0.upto(nums.length-1) do |i|
        if(nums[i] == val)
            k += 1
            vacant_index << i
        elsif(vacant_index.length > 0)
            nums[vacant_index[q]] = nums[i]
            q += 1
            vacant_index << i

        end
    end

    nums.length - k
end


def remove_element(nums, val)
    nums.delete(val)
    nums.compact!
    nums.size
end


p remove_element([0,1,2,2,3,0,4,2], 2)