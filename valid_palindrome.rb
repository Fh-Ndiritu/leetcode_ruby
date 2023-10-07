# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    new_s = s&.gsub(/[^a-zA-Z0-9]/, '')&.downcase
    midpoint = new_s.length / 2
    i = 0

    while i < midpoint
        return false if new_s[i] != new_s[-1-i]
        i += 1
    end

    return true
end


p is_palindrome("race a car")