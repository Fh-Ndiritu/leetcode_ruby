# @param {String} corridor
# @return {Integer}
def number_of_ways(corridor)
    #loop from start to end
    #each two S mean substring
    #more than two subsequent S - one way 
    #if S is full and followed by P - find combinations


    i = 0
    seats = 0
    ways = []
    tally = corridor.chars.tally

    return 0 if tally["S"].to_i < 2 || tally["S"].odd?
    while i < corridor.length 
        if corridor[i] == "S"
            seats +=1
        elsif seats.even?

            if  seats != 0 && seats < tally["S"]
                plants = 1
                k = i+1 
                while corridor[k]=="P"
                    plants +=1
                    k += 1
                end
                i = k-1

                ways << plants+1
            end
        end

        i += 1
    end

    no_of_ways =  ways.inject(1){ |product, way| product*way % (10**9+7)}
    no_of_ways
    
end


p number_of_ways("SPPPPPPPSPPPSPSSSPPPPPPPPPPPPPPPPPSPPPPPPPPPPPPPPPPSPPPPPSPSPPPPPPSPSPPSPSPPPSPSPPSSPPPPPSPPSSPP")