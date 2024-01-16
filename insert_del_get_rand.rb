class RandomizedSet
    attr_accessor :sets, :size
    def initialize()
        @sets = {}
        @size = 0 
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
        if @sets[val] 
            return false 
        else 
            @sets[val] = 1 
            @size += 1
            return true 
        end
        
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
        if @sets[val]
            @sets.delete(val)
           @size -= 1
            return true 
        else
            return false 
        end
    end


=begin
    :rtype: Integer
=end
    def get_random()
        idx = rand(0...@size)
        return @sets.keys[idx]

    end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()