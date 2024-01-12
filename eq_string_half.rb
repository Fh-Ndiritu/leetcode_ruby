# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
    vowels = {'a'=>1, 'e'=>1, 'i'=>1, 'o'=>1, 'u'=>1, 'A'=>1, 'E'=>1, 'I'=>1, 'O'=>1, 'U'=>1}
    midpoint = s.size/2

    first_v = 0 
    s[0...midpoint].chars.each do |char|
        if vowels[char]
            first_v += 1
        end
    end

    second_v = 0 
    s[midpoint..].chars.each do |char|
        if vowels[char]
            second_v += 1
        end
    end

    return second_v == first_v
    
end

p halves_are_alike("os")