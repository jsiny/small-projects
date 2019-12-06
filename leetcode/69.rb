# https://leetcode.com/problems/sqrtx/

def my_sqrt(x)
  (x ** 0.5).truncate
end

p my_sqrt(4) == 2
p my_sqrt(8) == 2
