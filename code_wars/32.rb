# The maximum sum subarray problem consists in finding the maximum sum of a
# contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]

# Easy case is when the list is made up of only positive numbers and the
# maximum sum is the sum of the whole array. If the list is made up of only
# negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum.
# Note that the empty list or array is also a valid sublist/subarray.

# algo
# - initialize sums array []
# - max = arr.size - 1
# - iterate thru the array
#   > for each element, iterate until n = max
#   > sums << arr[i..n].sum
# - return max sum



def max_sequence(arr)
  sums = [arr.first]

  arr.each_with_index do |num, num_i|
    (num...arr.size).each do |i|
      sums << arr[num_i..i].sum
    end
  end

  arr.empty? ? 0 : sums.max
end

p max_sequence([])                              == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11])                            == 11
p max_sequence([-32])                           == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
p max_sequence([8, -18, 20, 22, 8, 21, 17])
