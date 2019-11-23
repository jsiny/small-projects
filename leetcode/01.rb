# https://leetcode.com/problems/two-sum/submissions/

def two_sum(nums, target)
  nums.each_with_index do |first, i|
    nums.each_with_index do |second, j|
      return [i, j] if target == first + second && i != j
    end
  end
end