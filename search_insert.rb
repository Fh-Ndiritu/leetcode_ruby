# @param {Integer[]} nums
# @param {Integer} target
# # @return {Integer}
def search_insert(nums, target)
    get_index(nums, target, 0)

end

def get_index(arr, target, index)
    midpoint = arr.length/2
    return index if arr.empty?
    if arr[midpoint] == target
        return index + midpoint
    elsif arr[midpoint] < target
        get_index(arr[midpoint+1..], target, index+midpoint+1)
    else
        get_index(arr[0...midpoint], target, index)
    end

end



def search_insert(nums, target)
    index = nums.bsearch_index{|num| num >= target}
    index.nil? ? nums.length : index
end


https://leetcode.com/problems/search-insert-position/solutions/4151295/two-line-ruby-solution/