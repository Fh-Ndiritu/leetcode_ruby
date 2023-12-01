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

l23 = ListNode.new(4)
l22 = ListNode.new(6, l23)
l2 = ListNode.new(5, l22)


# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    a1, a2 = [], []
    n1s = l1
    while n1s
        a1 << n1s.val
        n1s = n1s.next
    end

    n2s = l2
    while n2s
        a2 << n2s.val
        n2s = n2s.next
    end

    a2 =  a2.reverse.join.to_i
    a1=  a1.reverse.join.to_i
    node_sum= (a2+a1).to_s.chars.reverse
    parent = ListNode.new(node_sum[0])
    head = parent

    i = 1
    while i < node_sum.size
        val = node_sum[i]
        n = ListNode.new(val)
        parent.next = n 
        parent = n
        i += 1
    end

     head

end



p add_two_numbers(l1, l2)




