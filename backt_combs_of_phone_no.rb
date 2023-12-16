# @param {String} digits
# @return {String[]}
# https://leetcode.com/problems/letter-combinations-of-a-phone-number/solutions/4412065/ruby-bruteforce-explained-o-4-n/
def letter_combinations(digits)
    return [] if digits.empty?
    lets = {"2"=> "abc", "3"=> "def", "4"=> "ghi", "5"=> "jkl", "6"=> "mno", "7"=> "pqrs", "8"=> "tuv", "9"=> "wxyz"}
    letter_digits = lets.each.with_object([]){|(digit, letters), pos|  pos.concat(letters.chars.zip([digit]*letters.size))}
    letter_digits = Hash[letter_digits]

    nums = digits.chars
    digits_tally = nums.tally
    possible_letters = nums.each.with_object(""){|num, str| str << lets[num]}.chars

    valid_combs = []
    possible_letters.repeated_permutation(digits.size) do |comb|
        if !valid_combs.include?(comb)
             valid_combs << comb if is_valid?(digits_tally, comb, letter_digits, digits)
        end
    end

    valid_combs.map(&:join)
   
end



def is_valid?(digits_tally, combination, letter_digits, digits)

    used_digits = {}
    combination.each_with_index do |letter, index| 
        digit = letter_digits[letter]
        return false  if digit != digits[index]  ##preserve the order of digits
        
        used_digits[digit] ||= 0
        used_digits[digit] += 1
        return false if used_digits[digit] > digits_tally[digit]  ## ensure no digit is overused
    end

    return true

end



p letter_combinations("22")