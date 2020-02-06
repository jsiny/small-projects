# https://leetcode.com/problems/invert-binary-tree/

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def invert_tree(root)
  return nil if root.nil?

  root.left, root.right = invert_tree(root.right), invert_tree(root.left)
  root
end

tree = TreeNode.new(4)
tree.left = TreeNode.new(2)
tree.left.left = TreeNode.new(1)
tree.left.right = TreeNode.new(3)

tree.right = TreeNode.new(7)
tree.right.left = TreeNode.new(6)
tree.right.right = TreeNode.new(9)

p invert_tree(tree)
