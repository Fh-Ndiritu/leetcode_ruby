# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    k = m+n - 1
    n = n-1
    m = m-1

    while k >-1 && n > -1
        if m > -1 && nums1[m] > nums2[n]
            nums1[k] = nums1[m]
            m -= 1
        else 
            nums1[k] = nums2[n]
            n -= 1
        end
        k -= 1
    end

    return nums1

end

p merge( [1,2,3,0,0,0, 0], 3, [1, 5, 6, 7], 4)
p merge([1], 1, [], 0)
p merge([0], 0, [1], 1)
p merge([0, 0], 0, [1, 2], 2)
