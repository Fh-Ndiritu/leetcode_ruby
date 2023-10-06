# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
    citations.sort!{|a, b| b <=> a}
    h = 0

    citations.each do |citation|
        return h unless  citation > h 
        h += 1
    end
    
    return h 


end


p h_index([100])
p h_index([1, 3, 1])