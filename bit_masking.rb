# Operators 

class Bitmask 
    def initialize
        @value = 0
    end

    def set(bit)
        @value |= bit
    end

    def clear(bit)
        @value &= ~bit
    end

    def check(bit)
        (@value & bit) == bit
    end
end

# bit = Bitmask.new
# bit.set(4)
# bit.clear(4)
# p bit.check(4)


data = 10001100
mask = 1000100

p (data & mask).to_s

p data.to_s
p mask.to_s

