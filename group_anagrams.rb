# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    anagrams = {}

    strs.each do |str|
        sorted_chars = str.chars.sort.join
        (anagrams[sorted_chars] ||= []) << str

    end

    return  anagrams.values
end


# https://leetcode.com/problems/group-anagrams/solutions/4390145/ruby-oneliner-explained/

def group_anagrams(strs)
    strs.each.with_object({}){|str, res|  (res[str.chars.sort.join] ||= []) << str}.values
end

strs = ["eat","tea","tan","ate","nat","bat"]
# strs = [""]
# strs = ["a"]
p group_anagrams(strs)