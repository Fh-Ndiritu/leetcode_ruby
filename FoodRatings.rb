#rating should be modifiable and the max easy to return
#return highest rated food by cuisine

#store foods in an easy to access way by food_name, hash??
#store foods in an easy to access way by cuisine

#foods should be ordered by rating, how??
#rating is key and food is array of foods??

class FoodRatings

    attr_accessor :foods_map, :cuisines_map, :ratings
    
    def initialize(foods, cuisines, ratings)
        i = 0 
        self.foods_map = {}
        self.cuisines_map = {}
        while i < foods.length
            food = foods[i]
            cuisine = cuisines[i]
            rating = ratings[i]

            # kimchi = 9
            foods_map[food] = [rating, cuisine]

            # korean = [kimchi]
            (cuisines_map[cuisine] ||= []) << [food, rating]

            i += 1
        end

    end


    def change_rating(food, new_rating)
        cuisine = foods_map[food][1]
        cuisines_map[cuisine].delete([food, foods_map[food][0]])
        
        foods_map[food][0] = new_rating 
        cuisines_map[cuisine] <<  [food, new_rating]
        return nil

    end


    def highest_rated(cuisine)
        foods = cuisines_map[cuisine]
        max_rated = foods.first
        foods[1..].each do |food|
            if food.last > max_rated.last
                max_rated = food
            elsif food.last == max_rated.last
                max_lex = [food.first, max_rated.first].sort.first
                max_rated = max_lex == food.first ? food : max_rated
            end
        end
        return max_rated.first
    end


end

# Your FoodRatings object will be instantiated and called as such:
# obj = FoodRatings.new(foods, cuisines, ratings)
# obj.change_rating(food, new_rating)
# param_2 = obj.highest_rated(cuisine)

foods = ["kimchi", "miso", "sushi", "moussaka", "ramen", "bulgogi"]
cuisines = ["korean", "japanese", "japanese", "greek", "japanese", "korean"]
ratings = [9, 12, 8, 15, 14, 7]

obj = FoodRatings.new(foods, cuisines, ratings)
p obj.highest_rated("korean")
p obj.highest_rated("japanese")
p obj.change_rating("sushi", 16)
p obj.highest_rated("japanese")
p obj.change_rating("ramen", 16)
p obj.highest_rated("japanese")