# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
# https://leetcode.com/problems/divide-two-integers/solutions/4350559/bit-shifting-and-clamping-very-human/
def divide(dividend, divisor)

    sign  = (dividend < 0) ^ (divisor < 0) ? "-" : ""

    dividend = dividend.abs 
    divisor    = divisor.abs

    quotient = 0
    if divisor > 1
       while dividend >= divisor
        temp_divisor = divisor
        multiple = 1

        while dividend >= (temp_divisor << 1)
            # [40, 3] ->temp_divisor changes as 3 -> 6 -> 12 -> 24 ...(q=1>2>4>8)
            # if the next double cant fit in dividend, get the remainder and restart the outer loop
            # 40< 48, 40-24 --> 16 :=> 3->6->12 (q = 8+(1>2>4) == 12) 
            #16 < 24, 16-12 --> 4:=> 3->6??( q -> 12+1> == 13) 
            temp_divisor <<= 1
            multiple <<=1 
        end


        dividend -= temp_divisor
        quotient += multiple
       end
    else 
        quotient = dividend
    end


    quotient =  "#{sign}#{quotient}".to_i

    return quotient.clamp(-2**31, (2**31)-1)


end


p divide(40, 3)
p divide(40, -1)