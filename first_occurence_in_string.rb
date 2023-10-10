def str_str(haystack, needle)
    i = 0
    while i < haystack.length
        if haystack[i] == needle[0]
            k = 1
            valid = true
            while valid && k < needle.length
                if haystack[i+k] != needle[k]
                    valid = false
                end
                k += 1
            end

            return i if valid
        end
        i += 1
    end

    return -1

end

p str_str("leetcode","leeto")