# https://leetcode.com/problems/valid-palindrome/

def is_palindrome(s)
  refined_str = s.downcase.gsub(/[^A-Za-z0-9]/, '')
  refined_str.reverse == refined_str
end

str = "A man, a plan, a canal: Panama"
p is_palindrome(str) == true

str = "race a car"
p is_palindrome(str) == false