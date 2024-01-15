# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)

    def getnode(node, arr)
        return arr if node.nil?
        arr << node.val 

        getnode(node.next, arr)
    end
    arr = []
    getnode(head, arr)
    arr.sort!

    head = ListNode.new(arr[-1], nil)
    (arr.size-2).downto(0) do |i| 
        head = ListNode.new(arr[i], head)

    end

    return head
    
end


ls8 = ListNode.new(0, nil)
ls7 = ListNode.new(4, ls8)
ls6 = ListNode.new(3, ls7)
ls5 = ListNode.new(5, ls6)
head = ListNode.new(-1, ls5)

p sort_list(head)
