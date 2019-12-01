def max_sub_array(nums)
  max_sum = nums.max
  gap = 0
  left_i = 0
  right_i = left_i + gap

  loop do
    right_i = left_i + gap
    arr = nums[left_i..right_i]
    max_sum = [max_sum, arr.sum].max

    if right_i == nums.size - 1
      left_i = 0
      gap += 1
    else
      left_i += 1
    end

    break if gap == nums.size
  end

  max_sum
end

p max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sub_array([-1]) == -1

# - hash with sum as value and key as subarray
# - double index left and right
# - gap = 1
# - add sum and subarray to hash
# - if we're at the end of the array (right == size - 1)
# -- left index = 0
# -- gap += 1
# -- right index = left + gap
# - else, left index and right index += 1