# https://leetcode.com/problems/remove-duplicates-from-sorted-list/

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def delete_duplicates(head)
  prev = nil
  node = head

  while node
    node.val == prev&.val ? prev.next = node.next : prev = node
    node = node.next
  end

  head
end

list = ListNode.new(1)
list.next = ListNode.new(1)
list.next.next = ListNode.new(2)

p delete_duplicates(list) 
# list = ListNode.new(1)
# list.next = ListNode.new(2)

list = ListNode.new(1)
list.next = ListNode.new(1)
list.next.next = ListNode.new(2)
list.next.next.next = ListNode.new(3)
list.next.next.next.next = ListNode.new(3)

p delete_duplicates(list) 
# list = ListNode.new(1)
# list.next = ListNode.new(2)
# list.next.next = ListNode.new(3)
