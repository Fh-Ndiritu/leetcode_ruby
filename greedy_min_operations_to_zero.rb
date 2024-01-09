# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)

    def reduce(ops, arr)
        # selected = arr.reject{|i| i <1}.min
        selected = arr.select{|i| i > 0 }.min
        return ops unless selected

        ops += 1
        arr.map!{|n| n - selected }
        reduce(ops, arr)

    end

    reduce(0, nums)
    
end

# p minimum_operations([0, 0 ])
p minimum_operations([1,5,0,3,5])