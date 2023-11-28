# @param {String} corridor
# @return {Integer}
MOD = (10**9)+7
def number_of_ways(corridor) #O(n)
    i = 0
    seats = 0
    ways = 1

    tally = corridor.chars.tally #O(n)
    return 0 if tally["S"].to_i < 2 || tally["S"].odd?


    while i < corridor.length  #O(n)
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

                p MOD
                ways = (ways * (plants+1)) % MOD
            end
        end

        i += 1
    end

   ways
    
end


p number_of_ways("SPPPPPPPSPPPSPSSSPPPPPPPPPPPPPPPPPSPPPPPPPPPPPPPPPPSPPPPPSPSPPPPPPSPSPPSPSPPPSPSPPSSPPPPPSPPSSPP")




