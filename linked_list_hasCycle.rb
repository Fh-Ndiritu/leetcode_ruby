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
def hasCycle(head)
    return false if head.nil?
    object_ids = []
    node_next = head.next 
    object_ids << head.object_id

    while  node_next
        id = node_next.object_id
        return true if object_ids.include?(id)
        object_ids << id
        node_next = node_next.next
        
    end

    return false

end

one = ListNode.new(3)
two =  ListNode.new(4)
one.next = two
three = ListNode.new(5)
two.next = one

p hasCycle(one)