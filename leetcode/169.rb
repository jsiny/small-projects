# https://leetcode.com/problems/majority-element/

# First attempt 

def majority_element(nums)
  count = Hash.new(0)

  nums.each do |n|
    count[n] += 1
    return n if count[n] > nums.size / 2
  end
end

# Second attempt

def majority_element(nums)
  nums.sort[nums.size / 2]
end

p majority_element([3, 2, 3]) == 3
p majority_element([2, 2, 1, 1, 1, 2, 2]) == 2

