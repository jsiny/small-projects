# Task
# Given a number , Return _The Maximum number _ could be formed from the digits of the number given .

# Notes
# Only Positve numbers passed to the function , numbers Contain digits [1:9] inclusive

# Digit Duplications could occur , So also consider it when forming the Largest

def max_number(num)
  num.digits.sort.reverse.join.to_i
end

p max_number(213) == 321
p max_number(7389) == 9873
p max_number(63792) == 97632
p max_number(566797) == 977665
p max_number(1000000) == 1000000
