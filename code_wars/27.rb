# You know what divisors of a number are.
# The divisors of a positive integer n are said to be proper when you consider
# only the divisors other than n itself. In the following description, divisors
# will mean proper divisors. For example for 100 they are 1, 2, 4, 5, 10, 20, 25, and 50.

# Let s(n) be the sum of these proper divisors of n.
# Call buddy two positive integers such that the sum of the proper divisors
# of each number is one more than the other number:

# (n, m) are a pair of buddy if s(m) = n + 1 and s(n) = m + 1

# For example 48 & 75 is such a pair:

# Divisors of 48 are: 1, 2, 3, 4, 6, 8, 12, 16, 24 --> sum: 76 = 75 + 1
# Divisors of 75 are: 1, 3, 5, 15, 25 --> sum: 49 = 48 + 1

# Given two positive integers start and limit, the function buddy(start, limit)
# should return the first pair (n m) of buddy pairs such that n (positive integer)
# is between start (inclusive) and limit (inclusive); m can be greater than
# limit and has to be greater than n

# If there is no buddy pair satisfying the conditions, then return "Nothing"


# input: 2 integers, the second bigger than the first
# output: a string "Nothing" or 2 digits to s


def sum_divisors(n)
  (1...n).select { |x| (n % x).zero? }.sum - 1
end

p sum_divisors(48) == 75
p sum_divisors(75) == 48
p sum_divisors(2295)
p sum_divisors(2024)

# algo
# - iterate from starting to limit
# - for each number (current element), compute its divisors sum
# - result = potential_match
# - compute the potential_match's divisors sum
# - return pair if equality
# - out of the loop, implicit return Nothing

def buddy(start, nd)
  start.upto(nd) do |n|
    potential_match = sum_divisors(n)
    next if potential_match < n
    return "(#{n} #{potential_match})" if sum_divisors(potential_match) == n
  end
  'Nothing'
end

p buddy(40, 60)           == '(48 75)'
p buddy(2177, 4357)       == 'Nothing'
p buddy(61000, 75000)     == '(62744 75495)'
# p buddy(1071625, 1103735) == "(1081184 1331967)"


