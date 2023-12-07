# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)

    return false unless ransom_note.length <= magazine.length

    ransom_t = {}

    i = 0 
    while i < magazine.size 
        char_mag = magazine[i]
        if ransom_t[char_mag]
            ransom_t[char_mag] -= 1
        else
            ransom_t[char_mag] = -1
        end

        char_ran = ransom_note[i]
        if char_ran.nil?
            return true if ransom_t.values.max <= 0 
        else
            if ransom_t[char_ran]
                ransom_t[char_ran] += 1
            else
                ransom_t[char_ran] = 1
            end
        end

        i += 1
    end

    return ransom_t.values.max >0 ? false : true

end

p can_construct("aa", "aab")
p can_construct("aa", "bb")
p can_construct("aa", "ab")







# def can_construct(ransom_note, magazine)
#     #get tally of ransom 
#     #get tally of magazine 
#     #ensure tally of magazine is eq or greater
#     #return if ransom_note is shorter

#     return false unless ransom_note.length <= magazine.length
#     ran_tallly = ransom_note.chars.tally 
#     mag_tally = magazine.chars.tally

#     ran_tallly.each do |char, count|
#         if mag_tally[char].to_i < count 
#             return false
#         end
#     end

#     return true
    
# end