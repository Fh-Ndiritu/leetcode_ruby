# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)

    return get_median(nums1)  if nums2.empty?

    return get_median(nums2) if nums1.empty?
    
    arr =  join_arrs(nums1, nums2)
    get_median(arr)

end


def join_arrs(arr1, arr2)
    #get first element of nums1 that is greater than nums2[0]
    part1, unpatched1, unpatched2 = [], [], []
    n1_greater = arr1.bsearch_index{|x| x > arr2[0] }
    
    part1.concat(arr1[0...n1_greater])
    if n1_greater  #arr1 has unused subarray
        unpatched1 = arr1[n1_greater..]
        n2_greater = arr2.bsearch_index{ |x| x > unpatched1[0]}

       if n2_greater #arr2 has unused subarray
        part1.concat(arr2[0...n2_greater])
         unpatched2 = arr2[n2_greater..] 
         return part1.concat(join_arrs(unpatched1, unpatched2))
       else #arr2 is less than subarray of arr1
        return part1.concat(arr2).concat(unpatched1)
       end

    else
        return part1.concat(arr2)
    end

    
end

def get_median(arr)
    len = arr.size
    return arr[0].to_f unless len > 1
    midpoint = len /2 

    if (len % 2) == 0 #even 
        sum = (arr[midpoint]+arr[midpoint-1])
        (sum.to_f/2).round(4)
    else #odd
        arr[midpoint].to_f
    end
end

p find_median_sorted_arrays( [1, 3], [2])
p find_median_sorted_arrays( [1, 3, 5], [2, 4])
