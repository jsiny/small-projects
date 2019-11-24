# https://leetcode.com/problems/reverse-integer/

def reverse(x)
  negative = true if x < 0
  absolute_value = x.abs.digits.join.to_i
  return 0 if absolute_value > 2**31
  negative ? (- absolute_value) : absolute_value
end

p reverse(123)  == 321
p reverse(-123) == -321
p reverse(120)  == 21
