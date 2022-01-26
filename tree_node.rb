class TreeNode
    attr_accessor :left, :right, :value
    def initialize(value)
        @value = value
    end
end

node1 = TreeNode.new(25)
node2 = TreeNode.new(75)
root = TreeNode.new(50)
root.left = node1
root.right = node2

puts root.left.value