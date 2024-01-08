def is_valid(s)
    return false if s.size < 2

    closing = {"(" => ")", "["=>"]", "{"=>"}"}
    return false if closing[s[0]].nil?
    unmatched =[]
    unmatched << closing[s[0]]

    i = 1 
    while i < s.size 
        if closing[s[i]]
            unmatched << closing[s[i]]
        elsif unmatched[-1] == s[i]
            unmatched = unmatched[0...-1]
        else
            return false 
        end
        i += 1
    end

    unmatched.size == 0

end


p is_valid("()")
p is_valid("([)]")
p is_valid("]")