# https://leetcode.com/problems/plus-one/

def plus_one(digits)
  (digits.join.to_i + 1).to_s.chars.map(&:to_i)
end

p plus_one([1, 2, 3]) == [1, 2, 4]
p plus_one([4, 3, 2, 1]) == [4, 3, 2, 2]
p plus_one([9]) == [1, 0]