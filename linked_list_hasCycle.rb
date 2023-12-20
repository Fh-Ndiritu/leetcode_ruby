# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
# https://leetcode.com/problems/linked-list-cycle/solutions/4429665/intuitive-solution-using-ruby-object-ids-explained/
def hasCycle(head)
    return false if head.nil?
    
    node = head 
    object_ids = {}
    while node
        id = node.object_id
        return true if object_ids[id]
        object_ids[id] = true
        node = node.next
    end

    return false

end

one = ListNode.new(3)
two =  ListNode.new(4)
one.next = two
three = ListNode.new(5)
two.next = one

p hasCycle(one)