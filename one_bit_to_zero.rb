# @param {Integer} n
# @return {Integer}
# https://leetcode.com/problems/minimum-one-bit-operations-to-make-integers-zero/solutions/4349248/ruby-binary-tree-bit-shifting-beats-100-with-explanation/
def minimum_one_bit_operations(n)
    return 0 if n ==0
    
    k = 0
    while 2**k <= n 
        k += 1
    end

    k -=1

    ways_of_significant_bit = 2**(k+1)-1


    return ways_of_significant_bit-minimum_one_bit_operations((2**k).to_i ^ n)

end



p minimum_one_bit_operations(6)
