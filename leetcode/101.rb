# https://leetcode.com/problems/symmetric-tree/

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def is_symmetric(root)
  return true if root.nil?
  mirror?(root.left, root.right)
end

def mirror?(a, b)
  return a == b if a.nil? || b.nil?
  return false if a.val != b.val
  mirror?(a.left, b.right) && mirror?(a.right, b.left)
end

tree              = TreeNode.new(1)
tree.left         = TreeNode.new(2)
tree.left.left    = TreeNode.new(3)
tree.left.right   = TreeNode.new(4)
tree.right        = TreeNode.new(2)
tree.right.left   = TreeNode.new(4)
tree.right.right  = TreeNode.new(3)

p is_symmetric(tree) == true

tree              = TreeNode.new(1)
tree.left         = TreeNode.new(2)
tree.left.right   = TreeNode.new(3)
tree.right        = TreeNode.new(2)
tree.right.right  = TreeNode.new(3)

p is_symmetric(tree) == false