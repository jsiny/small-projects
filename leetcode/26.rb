# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

def remove_duplicates(nums)
  nums.uniq == nums ? nums.size : nums.uniq!.size  
end
p remove_duplicates([1,1,2]) == 2
p remove_duplicates([0,0,1,1,1,2,2,3,3,4]) == 5
p remove_duplicates([]) == 0
p remove_duplicates([1, 2, 3]) == 3
