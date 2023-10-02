# @param {Integer} x
# @return {Boolean}
# def is_palindrome(x)
#     return false if x < 0
#     x = x.to_s
#     i = 0
#     reverse_index = x.length
#     midpoint = x.length/2

#     while i < midpoint
#         reverse_index -= 1
#         if(x[i] != x[reverse_index])
#             return false
#         end
#         i += 1
#     end

#     return true
    
# end


def is_palindrome(x)
    return false if x < 0
    x.to_s == x.to_s.reverse
end

p is_palindrome(1001)