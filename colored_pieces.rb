# @param {String} colors
# @return {Boolean}
def winner_of_game(colors)
    alice = 0
    bob = 0
    prev_l, current_l, next_l, i = colors[0], colors[1], colors[2], 1

    while i < colors.length-1
        if prev_l == current_l && current_l == next_l
            alice += 1 if current_l == "A"
            bob += 1 if current_l == "B"
        end
        prev_l = current_l
        current_l = next_l
        i += 1
        next_l = colors[i+1]
    end

    alice > bob

    
end

p winner_of_game("ABBBBBBBAAA")