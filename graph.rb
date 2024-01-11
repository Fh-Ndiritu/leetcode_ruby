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

class Graph 
    attr_accessor :vertices, :edges, :start_idx

     def initialize(node, start)
        @vertices = {}
        @edges = []

        def add_node(node, start)
            @vertices[node.val] = node.val == start 
            @start_idx = @edges.size-1  if node.val == start

            if node.left 
                @edges << [node.val, node.left.val] 
                add_node(node.left, start)
            end

            if node.right
                @edges << [node.val, node.right.val] 
                add_node(node.right, start)
            end

        end

        add_node(node, start)
    end
end


def amount_of_time(root, start)
    def fill_graph(graph, targets, i)
    
    return i if targets.size == graph.vertices.size
    infected = targets.size
      graph.edges.each do |e| 
        if e.include?(targets[i])
         vertice =  e.reject{|pair| pair == targets[i]}.first
         graph.vertices[vertice] = true 
         targets << vertice if targets.index(vertice).nil?
        end
      end

      if targets.size > infected 
        i += 1
        p [graph.vertices, i]
        fill_graph(graph, targets, i)
      end

    end

    graph = Graph.new(root, start)
    i = 0 

   p fill_graph(graph,[start], i)
    # p graph.edges
    # p graph.vertices

end




# root_values = [1, 5, 3, nil, 4, 10, 6, 9, 2]
# root_values = [1,2,nil,3,nil,4,nil,5]
root_values = [1,2,nil,3,nil,4,nil,5]
root = generate_binary_tree(root_values)
start = 3

p amount_of_time(root, start)