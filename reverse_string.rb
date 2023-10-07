# @param {String} s
# @return {String}

# Ruby has a squeeze method to remove consecuitive similar characters
# s.squeeze(" ")
def reverse_words(s)
    s.split(" ").reverse.join(" ")
end

p reverse_words("  hello world  ")