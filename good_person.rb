# https://leetcode.com/problems/maximum-good-people-based-on-statements/solutions/4339016/explained-ruby-100-performant-brute-force-backtracked-solution-o-2-n-n-2/
def maximum_good(statements)  
    n = statements.size
    possible_outcomes = [0, 1].repeated_permutation(n).to_a

    valid = []
    
    possible_outcomes.each do |truth|  #O(2^n*n^2)
       valid << truth if  validate_claim(statements, truth) 
    end

    valid.map{|val| val.sum }.max


end

def validate_claim(statements, truthful) #O(n^2)
        #invalid if GP says GP is BP
        #invalid if GP says BP is GP
        #we can only trust people in current outcome
        statements.each_with_index do |comments, stated_by| #O(n)
            next unless truthful[stated_by] == 1
            #trust only good people
                comments.each_with_index do |comment, stated_for| #O(n)
                    next if comment == 2
                    
                    gp_is_bp = comment == 0 && truthful[stated_for] == 1
                    bp_is_gp = comment ==1 && truthful[stated_for] == 0

                    if gp_is_bp || bp_is_gp
                        return false
                    end
                end
        end

        return true 

end


p maximum_good(
  [[2,0,2,2,0],[2,2,2,1,2],[2,2,2,1,2],[1,2,0,2,2],[1,0,2,1,2]]
)

p maximum_good(
    [
        [2,1,2],
        [1,2,2],
        [2,0,2] 
    ]
)