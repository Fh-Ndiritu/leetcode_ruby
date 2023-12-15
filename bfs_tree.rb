class BinaryTree 
    attr_accessor :root

    def initialize( node= nil)
        self.root = node
    end
end

class Node 
    attr_accessor :value, :left, :right

    def initialize(value=nil, left=nil, right=nil)
        self.value = value
        self.left = left
        self.right = right
    end

end

root = Node.new(10)
tr = BinaryTree.new(root)
root.left = Node.new(20)
root.right = Node.new(30)

# Adding nodes to the second level
root.left.left = Node.new(40)
root.left.right = Node.new(50)
root.right.left = Node.new(60)
root.right.right = Node.new(70)

# Adding nodes to the third level
root.left.left.left = Node.new(80)
root.left.left.right = Node.new(90)
root.left.right.left = Node.new(100)
root.left.right.right = Node.new(110)
root.right.left.left = Node.new(120)
root.right.left.right = Node.new(130)
root.right.right.left = Node.new(140)
root.right.right.right = Node.new(150)

# Adding nodes to the fourth level
root.left.left.left.left = Node.new(160)
root.left.left.left.right = Node.new(170)
root.left.left.right.left = Node.new(180)
root.left.left.right.right = Node.new(190)
root.left.right.left.left = Node.new(200)
root.left.right.left.right = Node.new(210)
root.left.right.right.left = Node.new(220)
root.left.right.right.right = Node.new(230)
root.right.left.left.left = Node.new(240)
root.right.left.left.right = Node.new(250)
root.right.left.right.left = Node.new(260)
root.right.left.right.right = Node.new(270)
root.right.right.left.left = Node.new(280)
root.right.right.left.right = Node.new(290)
root.right.right.right.left = Node.new(300)
root.right.right.right.right = Node.new(310)


def bfs(tr)
    qu = [tr.root]
    values = []
    i = 0 

    while i < qu.size 
        node = qu[i]
        if not node.nil?
            qu << node.left
            qu << node.right
            values << node.value
        end
        i += 1
    end

     values
end


p bfs(tr)
