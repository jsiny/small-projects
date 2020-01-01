# https://www.codewars.com/kata/54d81488b981293527000c8f

require 'set'

def sum_pairs(arr, sum)
  seen_numbers = Set.new

  arr.each do |n|
    return [sum - n, n] if seen_numbers.include?(sum - n)
    seen_numbers.add(n)
  end
  nil
end

p sum_pairs([11, 3, 7, 5],         10) == [3, 7]

p sum_pairs([4, 3, 2, 3, 4],         6) == [4, 2]
#            ^-----^         4 + 2 = 6, indices: 0, 2 *
#               ^-----^      3 + 3 = 6, indices: 1, 3
#                  ^-----^   2 + 4 = 6, indices: 2, 4
#  * entire pair is earlier, and therefore is the correct answer

p sum_pairs([0, 0, -2, 3], 2) == nil
#  there are no pairs of values that can be added to produce 2.

p sum_pairs([10, 5, 2, 3, 7, 5],         10) == [3, 7]
#                ^-----------^   5 + 5 = 10, indices: 1, 5
#                      ^--^      3 + 7 = 10, indices: 3, 4 *
#  * entire pair is earlier, and therefore is the correct answer

p sum_pairs([0, 0, -1, 3], 2) == [-1, 3]

# - start with step of 1
# - size - 1.times do :
# -- arr.each_w_index: 
# --- return pair if arr[i] + arr[i+step] = sum
# --- step += 1