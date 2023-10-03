# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    min_len = strs.map{|s| s.length}.min
    common = ""

    0.upto(min_len-1) do |i|
        curr_char = strs[0][i]

        strs.each do |str|
            return common if str.nil? || str[i] != curr_char
        end

        common << curr_char
    end

    common
end


p longest_common_prefix(["flower","flow","flight"])


p longest_common_prefix(["dogma","dogmatic","dogmatize"])