# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
    
    def get_leaf(node)
        return "" if node.nil?
        if node.left.nil? && node.right.nil?
            return node.val
        else
            return "" << get_leaf(node.left)<<get_leaf(node.right)
        end

        return seq
    end

    return get_leaf(root1) == get_leaf(root2)
    
end