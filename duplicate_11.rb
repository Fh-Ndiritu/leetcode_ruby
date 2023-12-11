# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
# https://leetcode.com/problems/contains-duplicate-ii/solutions/4390054/ruby-solution-with-hash-of-indeces-o-n/
def contains_nearby_duplicate(nums, k)
    nums_idx = {}
    result  = false

    nums.each_with_index do |num, index|  #loop through nums
        if nums_idx[num] && (nums_idx[num].last-index).abs <= k  #check if last occurrence meets condition
          return true
        end

        (nums_idx[num] ||= []) << index  #always push to map of occurrences
    end

    return result

end

# p contains_nearby_duplicate([1,2,3,1], 3)
# p contains_nearby_duplicate([1,2,3,1,2,3], 2)
# p contains_nearby_duplicate([1,0,1,1], 1)

nums = [313,64,612,515,412,661,244,164,492,744,233,579,62,786,342,817,838,396,230,79,570,702,124,727,586,542,919,372,187,626,869,923,103,932,368,891,411,125,724,287,575,326,88,125,746,117,363,8,881,441,542,653,211,180,620,175,747,276,832,772,165,733,574,186,778,586,601,165,422,956,357,134,857,114,450,64,494,679,495,205,859,136,477,879,940,139,903,689,954,335,859,78,20]
p contains_nearby_duplicate(nums, 22)
