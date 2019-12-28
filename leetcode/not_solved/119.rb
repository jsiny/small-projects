# https://leetcode.com/problems/pascals-triangle-ii/

require 'pry'

def get_row(rows)
  return [1]    if rows == 0
  return [1, 1] if rows == 1

  binding.pry
end


p get_row(3) # [1, 3, 3, 1]