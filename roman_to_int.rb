# @param {String} s
# @return {Integer}
def roman_to_int(s)
    ints = {"I" => 1,  "V" => 5,  "X" => 10,  "L" => 50,  "C" => 100,  "D" => 500,  "M" => 1000}
    prev_value = ints[s[-1]]
    converted = prev_value
    i = s.length - 2

    while i >= 0
        value = ints[s[i]]
        if value >= prev_value
            converted += value
        else
            converted -= value
        end
        prev_value = value
        i -= 1
    end
    
    converted
    
end

p roman_to_int("MCMXCIV")

