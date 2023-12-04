# @param {String} num
# @return {String}
# https://leetcode.com/problems/largest-3-same-digit-number-in-string/solutions/4359886/ruby-o-n-solution/
def largest_good_integer(num)
    #loop through num_chars
    #check if the next two chars are eq to current #valid sub 
    # if true store current sub && compare with next 

    i = 0 
    max_good = ""
    while i < num.size-2
        sub_str = num[i..(i+2)]
        if sub_str[0] == sub_str[1] && sub_str[1] == sub_str[2] #is_good_substr
            if max_good[0].to_i <= sub_str[0].to_i
                max_good = sub_str
            end
        elsif sub_str[1] != sub_str[2]
            i +=1
        end
        i +=1
    end

    return max_good
end


p largest_good_integer("42352338")
p largest_good_integer("0002300019")
p largest_good_integer("6777133339")