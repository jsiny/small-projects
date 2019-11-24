# https://leetcode.com/problems/palindrome-number/

def is_palindrome(x)
  return false if x < 0
  x.digits == x.digits.reverse
end

p is_palindrome(121)  == true
p is_palindrome(-121) == false
p is_palindrome(10)   == false
