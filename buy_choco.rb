# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
# https://leetcode.com/problems/buy-two-chocolates/solutions/4429505/ruby-2liner-beats-100-explained/
def buy_choco(prices, money)
    min_spent = prices.min(2).reduce(:+)
    return min_spent <= money ? money-min_spent : money
end

p buy_choco([1, 2, 3], 3)

p buy_choco([3,2,3], 3)