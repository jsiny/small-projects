# https://leetcode.com/problems/product-of-array-except-self/
# Not solved yet

def product_except_self(nums)
  nums.each_with_object([]).with_index do |(n, output), i|
    copy = nums.dup
    copy.delete_at(i)
    output << copy.reduce(:*)
  end
end

p product_except_self([1, 2, 3, 4]) == [24, 12, 8, 6]