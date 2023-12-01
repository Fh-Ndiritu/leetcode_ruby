# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
    w_1 = word1.join("")
    w_2 = word2.join("")

    p word1 - word2
    
    w_1 == w_2
end


p array_strings_are_equal(["ab", "c"], ["a", "bc"])