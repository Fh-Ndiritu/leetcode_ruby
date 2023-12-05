# @param {String} s
# @return {Integer}
def my_atoi(s)
    chars = s.chars
    valid_str = "" 
    
    #remove whitespace
    sign = ""
    k = 0
    if chars[0] == " "  
        while k < chars.size && chars[k] == " "
            k += 1
        end
    end

    #check & remove sign
    if chars[k] == "-"
        sign = "-"
        valid_str = chars[(k+1)..]
    elsif chars[k] == "+"
        valid_str = chars[(k+1)..]
    else
        valid_str = chars[k..]
    end


    i = 0
    ints = sign
    while i < valid_str.size and /\A\d+\z/.match?(valid_str[i])
        ints << valid_str[i]
        i +=1 
    end

    ints.to_i.clamp(-2**31, (2**31)-1)

    
end


p my_atoi("+1")
p my_atoi("words and 987")

# p my_atoi(" -392 skh is ")
# p my_atoi("42")
# p my_atoi("-42")
# p my_atoi("4.193 with words")