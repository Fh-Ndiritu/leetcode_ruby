# # @param {Integer[]} prices
# # @return {Integer}
def max_profit(prices)
    profits = 0
    current_price = prices[0]

    prices[1..].each do |stock|
        if stock > current_price
            profits += stock - current_price
        end
        current_price = stock
    end

    profits
    
end

# def max_profit(prices)
#     prices.each_cons(2).map{|today, tomorrow| [tomorrow - today, 0].max}.sum

# end


p max_profit([7,1,5,3,6,4])
# p max_profit([1,2,3,4,5])