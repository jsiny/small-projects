# https://www.codewars.com/kata/weight-for-weight/train/ruby

def order_weight(str)
  str.split.sort_by { |num| [weight(num), num] }.join(' ')
end

def weight(num)
  num.to_i.digits.sum
end

p order_weight("56 65 74 100 99 68 86 180 90") == "100 180 90 56 65 74 68 86 99"
p order_weight("2000 11 11 10003 22 123 1234000 44444444 9999") == "11 11 2000 10003 22 123 1234000 44444444 9999"

# It was decided to attribute a "weight" to numbers. The weight of a number 
# will be from now on the sum of its digits.

# For example 99 will have "weight" 18, 100 will have "weight" 1 so in the
# list 100 will come before 99. Given a string with the weights of FFC members
# in normal order can you give this string ordered by "weights" of these numbers?

# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: 
# "100 180 90 56 65 74 68 86 99"

# When two numbers have the same "weight", let us class them as if they 
# were strings (alphabetical ordering) and not numbers: 100 is before 180 
# because its "weight" (1) is less than the one of 180 (9) and 180 is before
# 90 since, having the same "weight" (9), it comes before as a string.

# All numbers in the list are positive numbers and the list can be empty.