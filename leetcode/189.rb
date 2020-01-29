# https://leetcode.com/problems/rotate-array/

# Brute force, but exceeds time limit

def rotate(nums, k)
  size = nums.size

  (k % size).times do 
    i = size - 1

    while i >= 1 
      nums[i], nums[i - 1] = nums[i - 1], nums[i]
      i -= 1
    end
  end
  nums
end

p rotate([1,2,3,4,5,6,7], 3) == [5,6,7,1,2,3,4]
p rotate([-1,-100,3,99], 2)  == [3,99,-1,-100]

# Surprisingly not accepted by Leetcode

def rotate(nums, k)
  result = Array.new(nums.size)
    nums.each_with_index do |n, i|
      result[(i + k) % nums.size] = n
    end  
  nums = result
end

p rotate([1,2,3,4,5,6,7], 3) == [5,6,7,1,2,3,4]
p rotate([-1,-100,3,99], 2)  == [3,99,-1,-100]


# Elegant algorithm (from Leetcode)

def rotate(nums, k)
  k %= nums.size

  nums.reverse!
  nums[0...k].reverse + nums[k..-1].reverse
end

p rotate([1,2,3,4,5,6,7], 3) == [5,6,7,1,2,3,4]
p rotate([-1,-100,3,99], 2)  == [3,99,-1,-100]