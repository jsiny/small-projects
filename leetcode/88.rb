# https://leetcode.com/problems/merge-sorted-array/

def merge(nums1, m, nums2, n)
  while m > 0 && n > 0
    if nums1[m - 1] >= nums2[n - 1]
      nums1[m + n - 1] = nums1[m - 1]
      m -= 1
    else
      nums1[m + n - 1] = nums2.pop
      n -= 1
    end
  end

  nums1[0...n] = nums2[0...n] if n.positive?
end

nums1 = [1, 2, 3, 0, 0, 0]
nums2 = [2, 5, 6]

m = 3
n = 3

merge(nums1, m, nums2, n) 
p nums1 == [1, 2, 2, 3, 5, 6]

nums1 = [0]
nums2 = [1]

m = 0
n = 1

merge(nums1, m, nums2, n) 
p nums1 == [1]