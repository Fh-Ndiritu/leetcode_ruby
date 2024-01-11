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
    attr_accessor :vertices, :edges

     def initialize(node, start)
        @vertices = {}
        @edges = {}

        def add_node(node, start)
            (@vertices[node.val] ||= {})[:infected] = node.val == start 
            if node.left 
                (@edges[node.val] ||= []) << node.left.val 
                (@vertices[node.left.val] ||= {})[:parent] = node.val 
                add_node(node.left, start)
            end

            if node.right
                (@edges[node.val]||=[]) <<  node.right.val
                (@vertices[node.right.val] ||= {})[:parent] = node.val
                add_node(node.right, start)
            end

        end

        add_node(node, start)
    end
end

def amount_of_time(root, start)
  def fill_graph(graph, targets, i, infected)
    next_up = Set.new

    targets.each do |current|
      graph.edges[current]&.each do |neighbor|
        if !graph.vertices[neighbor][:infected]
          graph.vertices[neighbor][:infected] = true
          next_up << neighbor
          infected << neighbor
        end
      end

      parent = graph.vertices[current][:parent]
      if parent && !graph.vertices[parent][:infected]
        graph.vertices[parent][:infected] = true
        next_up << parent
        infected << parent
      end
    end

    p [infected, i + 1, next_up.to_a]
    
    return i + 1 if infected.size == graph.vertices.size
    fill_graph(graph, next_up.to_a, i + 1, infected) unless infected.size > graph.vertices.size
  end

  graph = Graph.new(root, start)
  return graph.vertices.size - 1 if graph.vertices.size < 3
  fill_graph(graph, [start], 0, Set.new([start]))
end
# root_values = [1, 5, 3, nil, 4, 10, 6, 9, 2]
root_values = [1,2,nil,3,nil,4,nil,5]
# root_values = [1]






root = generate_binary_tree(root_values)
start = 1

p amount_of_time(root, start)