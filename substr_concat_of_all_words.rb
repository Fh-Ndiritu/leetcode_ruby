# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
    #step 1, find all possible permutations
    #find the min_len
    #find_index of each

    min_len = words.size*words.first.length
    return [] unless s.size >= min_len

    w_idx = (0..words.size-1).to_a
    possible_concats = []
    w_idx.repeated_permutation(words.size).each do |comb|
        possible_concats << comb if comb.uniq.length == comb.length
    end
    
    result = []
    possible_concats.each do |comb|
        str = comb.map{ |c|  words[c]}.join
        
        looping=true
        index = 0 
        while (index+min_len) <= s.size && looping
            nxt_idx = s[index..].index(str)
            if nxt_idx
                            p str
                result << nxt_idx+index
                index += nxt_idx+1
            else 
                looping = false
            end
        end
    end

    result.uniq
    
end

# p find_substring("barfoofoobarthefoobarman", ["bar","foo","the"])
# p find_substring("wordgoodgoodgoodbestword", ["word","good","best","word"])
# p find_substring("barfoothefoobarman"*1000, ["foo","bar"]*500)
# p find_substring("wordgoodgoodgoodbestword", ["word","good","best","good"])
p find_substring("a", ["a"])