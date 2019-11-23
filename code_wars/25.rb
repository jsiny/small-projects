# Task
# Given an integer n, find the maximal number you can obtain by deleting exactly
# one digit of the given number.

# Example
# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.

# Input/Output
# [input] integer n

# Constraints: 10 ≤ n ≤ 1000000.

# [output] an integer

# algo
# create pot results array
# iterate through the reverse digits array
# > at each iteration, compute the sum of the rest of the array
# return max value of pot results

def delete_digit(n)
  arr = n.digits.reverse

  arr.map.with_index do |x, i|
    new_arr = arr.dup
    new_arr.delete_at(i)
    new_arr.join.to_i
  end
     .max
end



p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
