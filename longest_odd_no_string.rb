# https://leetcode.com/problems/largest-odd-number-in-string/solutions/4373077/beats-95-in-ruby-with-explanation-o-n/
# @param {String} num
# @return {String}
def largest_odd_number(num)
    #traverse from end of string
    #if no is odd return remaining string
    #else return empty

    odd_nos = %w(1 3 5 7 9)
    (num.size-1).downto(0).each do |i|
        return num[0..i] if  odd_nos.include?(num[i])
    end

    return ""
    
end

# p largest_odd_number("52")
p largest_odd_number("4206")
p largest_odd_number("35427")
p largest_odd_number("3")


