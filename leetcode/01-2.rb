def two_sum(nums, target)
  nums.each_with_index do |x, i|
    j = i + 1

    until j == nums.size
      return [i, j] if nums[j] == target - x
      j += 1
    end
  end
end

p two_sum([2, 7, 11, 15], 9) == [0, 1]
p two_sum([3, 2, 4], 6)      == [1, 2]
