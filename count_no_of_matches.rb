# @param {Integer} n
# @return {Integer}
# https://leetcode.com/problems/count-of-matches-in-tournament/solutions/4364348/ruby-recursion-o-logn/
def number_of_matches(n)
    return n/2 if n < 3

    if n.odd? 
        matches = (n-1)/2
        return matches+ number_of_matches((n-1)/2+1)
    else
        matches =n/2
         return matches + number_of_matches(n/2)
    end
    
end


# p number_of_matches(7)
# p number_of_matches(14)
p number_of_matches(1)
p number_of_matches(200)