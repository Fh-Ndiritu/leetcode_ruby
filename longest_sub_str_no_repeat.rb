# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
return 0 if s.length < 1

start_ind = 0
len = 1

(1..s.length-1).each do |i|
    sub_str = s[start_ind...i]
    if sub_str.include?(s[i])
        start_ind = s.index(s[i], start_ind)+1
    else
        len = [len, i-start_ind+1].max
    end
end

len

end


# p length_of_longest_substring("abcabcbb")
# p length_of_longest_substring("bbbbb")
# p length_of_longest_substring("au")
# p length_of_longest_substring("pwwkew")
# p length_of_longest_substring("dvdf")