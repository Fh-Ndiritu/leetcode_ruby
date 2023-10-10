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

def str_str(haystack, needle)
    index =  haystack.index(needle)
    index.nil? ? -1 : index
end


https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/solutions/4153594/ruby-inbuilt-index-solution-and-long-solution/
