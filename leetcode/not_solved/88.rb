# https://leetcode.com/problems/merge-sorted-array/

def merge(nums1, m, nums2, n)
  i = 0
  nums2.each do |n|
    loop do
      if nums1[i] >= n || nums1[i].zero?
        nums1 = insert(nums1, i, n)
        i += 1
        break
      else
        i += 1
      end
    end
  end
  nums1
end

def insert(arr, index, element)
  result = arr.dup
  result[index] = element
  result[index + 1..-1] = arr[index..-2]
  result
end

nums1 = [1, 2, 3, 0, 0, 0]
nums2 = [2, 5, 6]

# p insert(nums1, 1, 2) == [1, 2, 2, 3, 0, 0]

m = 3
n = 3

p merge(nums1, m, nums2, n) == [1, 2, 2, 3, 5, 6]

# - i = 0
# - iterate through nums2
# -- loop
# --- if nums1[i] >= el
# ---- insert el at index
# ---- increment index by 1
# ---- pop
# ---- Break
# --- else increment index by 1
# - return nums1