# https://leetcode.com/problems/design-a-food-rating-system/solutions/4417926/beats-100-using-ruby-maps-fully-explained/
class FoodRatings

    attr_accessor :the_foods, :the_cuisines, :the_ratings
    
    def initialize(foods, cuisines, ratings)
        i = 0 
        self.the_foods = {}
        self.the_ratings = {}
        self.the_cuisines = {}
        while i < foods.length
            the_foods[foods[i]] =   {cuisine: cuisines[i], rating: ratings[i]}
            (the_ratings[ratings[i]] ||= []) << {food: foods[i], cuisine: cuisines[i]}
            (the_cuisines[cuisines[i]]  ||= {})[foods[i]] = ratings[i]
            i += 1
        end

    end


    def change_rating(food, new_rating)
        old_rating =  the_foods[food][:rating] 
        the_foods[food][:rating]  = new_rating

        cuisine = the_foods[food][:cuisine]
        the_cuisines[cuisine][food] = new_rating
        the_ratings[old_rating].delete({food: food, cuisine: cuisine})
        (the_ratings[new_rating] ||= []) << {food: food, cuisine: cuisine}
        return nil

    end


    def highest_rated(cuisine)
        foods = the_cuisines[cuisine]
        rate =  foods.values.max
        foods = the_ratings[rate].select{|rate| rate[:cuisine] == cuisine}.sort_by{|rate| rate[:food]}
        foods.first[:food]

    end


end

foods = ["kimchi", "miso", "sushi", "moussaka", "ramen", "bulgogi"]
cuisines = ["korean", "japanese", "japanese", "greek", "japanese", "korean"]
ratings = [9, 12, 9, 15, 14, 9]

obj = FoodRatings.new(foods, cuisines, ratings)
p obj.highest_rated("korean")
p obj.highest_rated("japanese")
p obj.change_rating("sushi", 16)
p obj.highest_rated("japanese")
p obj.change_rating("ramen", 16)
p obj.highest_rated("japanese")