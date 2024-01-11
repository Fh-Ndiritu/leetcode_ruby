class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def generate_binary_tree(root_values)
  return nil if root_values.empty?

  root = TreeNode.new(root_values[0])
  queue = [root]
  i = 1

  while i < root_values.length
    current_node = queue.shift

    left_value = root_values[i]
    i += 1
    if left_value.nil?
      current_node.left = nil
    else
      current_node.left = TreeNode.new(left_value)
      queue.push(current_node.left)
    end

    right_value = root_values[i]
    i += 1
    if right_value.nil?
      current_node.right = nil
    else
      current_node.right = TreeNode.new(right_value)
      queue.push(current_node.right)
    end
  end

  root
end


def amount_of_time(root, start)
  nodes = [root]
  weights = {}
  values = []
  i = 0 
  idx = 0 

  while i < nodes.size 
    node = nodes[i]
    if !node.nil?
      nodes << node.left
      nodes << node.right
      weights[i%2]||=[] <<  node.left 
      weights[i%2]||=[] <<  node.right

      if node.val == start
        idx = i
      end
    end
    i += 1
  end

   weights[0].each{|n| p n&.val}
   exit
end



# Example usage:
start = 3
root_values = [1, 5, 3, nil, 4, 10, 6, 9, 2]
# root_values = [5,2,3,4,nil,nil,nil,1]
# root_values = [1,2,nil,3,nil,4,nil,5]
# root_values = [1,5,3,nil,4,10,6,9,2]
root = generate_binary_tree(root_values)

p amount_of_time(root, start)