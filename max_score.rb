# @param {String} s
# @return {Integer}
# https://leetcode.com/problems/maximum-score-after-splitting-a-string/solutions/4440434/beats-100-in-ruby-explained-o-n/
def max_score(s)
    zeros = ones = 0 

    tallies = s.chars.tally
    if s[0]=="0" 
        ones = tallies["1"].to_i
        zeros = 1
    else 
        ones =  tallies["1"].to_i-1
    end

    max_sum = zeros+ones
    s[1..-2].chars.each do |char| 
        zeros += 1 if char == "0"
        ones -= 1 if char == "1"

        max_sum = [zeros+ones, max_sum].max
    end

    max_sum

end

p max_score("011101")
p max_score("00111")
p max_score("1111")
p max_score("00")