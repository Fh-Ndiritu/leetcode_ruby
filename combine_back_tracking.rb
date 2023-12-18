# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
# https://leetcode.com/problems/combinations/solutions/4420231/ruby-oneliner-explained/
def combine(n, k)
    combs = []
    (1..n).to_a.combination(k).to_a
end

p combine(4, 2)
p combine(10, 7)