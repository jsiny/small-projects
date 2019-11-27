# https://leetcode.com/problems/remove-element/

def remove_element(nums, val)
  nums.delete(val)
  nums.size
end

p remove_element([3, 2, 2, 3], 3)             == 2 
p remove_element([0, 1, 2, 2, 3, 0, 4, 2], 2) == 5
p remove_element([], 3)                       == 0