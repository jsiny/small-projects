# https://leetcode.com/problems/same-tree/

class TreeNode
  attr_accessor :val, :l, :r
  def initialize(val)
    @val = val
    @l, @r = nil, nil
  end
end

def same_tree?(p, q)
  return true if p.nil? && q.nil?
  return (same_tree?(p.l, q.l) && same_tree?(p.r, q.r)) if p&.val == q&.val
  false
end

p = TreeNode.new(1)
p.l = TreeNode.new(2)
p.r = TreeNode.new(3)

q = TreeNode.new(1)
q.l = TreeNode.new(2)
q.r = TreeNode.new(3)

p same_tree?(p, q) == true

p = TreeNode.new(1)
p.l = TreeNode.new(2)

q = TreeNode.new(1)
q.r = TreeNode.new(2)

p same_tree?(p, q) == false

p = TreeNode.new(1)
p.l = TreeNode.new(2)
p.r = TreeNode.new(1)

q = TreeNode.new(1)
q.l = TreeNode.new(1)
q.r = TreeNode.new(2)

p same_tree?(p, q) == false
