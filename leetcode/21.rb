#  https://leetcode.com/problems/merge-two-sorted-lists/

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_lists(l1,l2)
  return l1 unless l2
  return l2 unless l1
  l1, l2 = l2, l1 if l1.val > l2.val
  l1.next = merge_two_lists(l1.next, l2)
  l1
end

l1 = ListNode.new(1)
l1.next = ListNode.new(2)
l1.next.next = ListNode.new(4)

l2 = ListNode.new(1)
l2.next = ListNode.new(3)
l2.next.next = ListNode.new(4)

# l3 = ListNode.new(1)
# l3.next = ListNode.new(1)
# l3.next.next = ListNode.new(2)
# l3.next.next.next = ListNode.new(3)
# l3.next.next.next.next = ListNode.new(4)
# l3.next.next.next.next.next = ListNode.new(4)

p merge_two_lists(l1, l2)

