# @param {String[][]} paths
# @return {String}
# https://leetcode.com/problems/destination-city/solutions/4408330/explained-ruby-2-liner-o-n/
def dest_city(paths)
    dest = paths.each.with_object({}){|path, cities| (cities[path.first] ||= path.last)}
    (dest.values - dest.keys).first
end

p dest_city([["B","C"],["D","B"],["C","A"]])
 p dest_city([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]])