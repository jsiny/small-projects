# https://leetcode.com/problems/search-insert-position/

def search_insert(nums, target)
  nums.each_with_index { |num, i| return i if num >= target }
  nums.size
end

p search_insert([1, 3, 5, 6], 5) == 2
p search_insert([1, 3, 5, 6], 2) == 1
p search_insert([1, 3, 5, 6], 7) == 4
p search_insert([1, 3, 5, 6], 0) == 0
