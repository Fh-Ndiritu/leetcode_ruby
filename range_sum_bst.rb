# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)

    def get_sum(node, low, high) 
        return 0  if node.nil?
        sum = 0
        sum += node.val if low <= node.val && high >= node.val

        return sum+get_sum(node.left, low, high)+get_sum(node.right, low, high)
    end
    
    return get_sum(root, low, high)

end