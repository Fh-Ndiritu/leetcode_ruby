class RandomizedSet
    def initialize()
        @set = []
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def insert(val)
        if @set.include?(val)
            return false
        else
            @set << val
            return true
        end
    end


=begin
    :type val: Integer
    :rtype: Boolean
=end
    def remove(val)
        if @set.include?(val)
            @set.delete(val)
            return true
        else
            return false
        end
    end


=begin
    :rtype: Integer
=end
    def get_random()
        @set.sample
    end


end

