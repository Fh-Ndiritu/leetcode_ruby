

def word_pattern(pattern, s)
    patterns = pattern.chars 
    words = s.split
    return false unless patterns.size == words.size

    get_repetitions(words) == get_repetitions(patterns)
end

def get_repetitions(str_arr)
    str_arr.each_with_index.with_object({}){|(str, index), hash| (hash[str] ||=[]) << index}.values
end

p word_pattern("abba", "dog dog dog dog")
p word_pattern("aaaa", "dog cat cat dog")
p word_pattern("abba", "dog cat cat dog")
p word_pattern("aaaa","dog cat cat dog")
p word_pattern("abc", "dog cat dog")

p word_pattern("abc", "b c a")







# https://leetcode.com/problems/word-pattern/solutions/4373365/beat-100-with-ruby-verbose-two-hashes-o-s-size-2/
# @param {String} pattern
# @param {String} s
# @return {Boolean}
# def word_pattern(pattern, s)
#     #make a hash mapping every first instance of word in s to pattern char
#     #verify by making sure very pattern char has the same word as existing key in hash 
#     words = s.split
#     return false if words.size != pattern.size
#     p_matches = {}
#     w_matches = {}

#     words.each_with_index do |word, index|
#         patt = pattern[index]
#         word_at_patt = p_matches[patt]
#         patt_at_word = w_matches[word]

#         if word_at_patt.nil? && patt_at_word.nil?
#             p_matches[patt] = word 
#             w_matches[word] = patt
#         elsif word_at_patt != word || patt_at_word != patt 
#             return false 
#         end
#     end

# return true
    
# end