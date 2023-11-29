# @param {Integer} n, a positive integer
# @return {Integer}
# def hamming_weight(n)
#      n.to_s(2).chars.tally["1"].to_i
# end

# def hamming_weight(n)
#     binary_str = n.to_s(2)
#     sum = 0

#     i = 0
#     while i < binary_str.length 

#         if binary_str[i] == "1"
#             sum += 1
#         end
#         i+= 1
#     end

#     return sum
    
# end


def hamming_weight(n)
    ones = 0
    while n > 0 
        if (n & 1) == 1
            ones += 1
        end
        n >>= 1
    end

    ones
end

p hamming_weight(128)
p hamming_weight(11)