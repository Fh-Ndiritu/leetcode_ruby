# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
    vowels = {'a'=>1, 'e'=>1, 'i'=>1, 'o'=>1, 'u'=>1, 'A'=>1, 'E'=>1, 'I'=>1, 'O'=>1, 'U'=>1}
    len =s.size 
    midpoint = len/2


    i = count = 0 
    while i < midpoint
        first_char = s[i]
        if vowels[first_char]
            count += 1
        end

        second_char = s[len-1-i]
        if vowels[second_char]
            count -= 1
        end
        i += 1

    end

    return count==0
    
end

p halves_are_alike("bOok")