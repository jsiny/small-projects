# https://leetcode.com/problems/add-two-numbers/

class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

def add_two_numbers(l1, l2)
  carry = 0
  head = tail = ListNode.new(0)

  while l1 || l2
    sum = l1&.val.to_i + l2&.val.to_i + carry
    carry, sum = sum.divmod(10)

    l1, l2, tail.val = l1&.next, l2&.next, sum
    tail.next = ListNode.new(carry) if l1 || l2 || carry.positive?

    tail = tail.next
  end

  head
end

l1           = ListNode.new(2)
l1.next      = ListNode.new(4)
l1.next.next = ListNode.new(3)

l2           = ListNode.new(5)
l2.next      = ListNode.new(6)
l2.next.next = ListNode.new(4)

l3           = ListNode.new(7)
l3.next      = ListNode.new(0)
l3.next.next = ListNode.new(8)

p add_two_numbers(l1, l2)

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.
