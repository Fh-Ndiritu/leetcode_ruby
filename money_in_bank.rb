# @param {Integer} n
# @return {Integer}
def total_money(n)

    total_money = 0 
    (1).upto(n) do |day|
        monday = (day.to_f/7).ceil
        total_money +=  monday+(day-1) % 7

    end
    total_money

end 

# p total_money(1000)

p total_money(4)
p total_money(20)
p total_money(10)









def total_money(n)
    total_weeks = (n.to_f/7).ceil

    total_money = 0 
    (1).upto(total_weeks) do |week|
        days = week*7 > n ? n-(week-1)*7 : 7
        week_money = (week..(week+days-1))
        total_money += week_money.inject(0){|sum, elem| sum += elem}
    end

    total_money

end 