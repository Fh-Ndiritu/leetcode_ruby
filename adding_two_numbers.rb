# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
l13 = ListNode.new(3)
l12 = ListNode.new(4, l13)
l1 = ListNode.new(2, l12)

# l23 = ListNode.new(4)
l22 = ListNode.new(6)
l2 = ListNode.new(5, l22)


# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)

    a1, a2 = [], []
    i = 0 

    n1s = l1
    n2s = l2
    while n1s || n2s
        if n1s
            a1 << n1s.val
            n1s = n1s.next
        end
        if n2s
         a2 << n2s.val
        n2s = n2s.next
        end

    end

    if a1.size >= a2.size 
        base_node = l1
        filler = [0]*(a1.size-a2.size)
        short_arr = filler.concat(a2)
        long_arr = a1
    else
        base_node = l2
        filler = [0]*(a2.size-a1.size)
        short_arr =[0]*(a2.size-a1.size).concat(a1)
        long_arr = a2
    end

    last_node = ListNode.new()
    head = last_node

    i = long_arr.size
    while i >= 0
        p long_arr[i]
        p short_arr[i]
        # n = ListNode.new(val)
        # parent.next = n 
        # parent = n
        i -= 1
    end

end



p add_two_numbers(l1, l2)




