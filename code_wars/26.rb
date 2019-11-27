# convert into an array
# initialize result string
# find max index of the array (arr.size - 1)
# iterate from the max index to 0
# at each iteration, add the corresponding element to the result string
# return string

def string_reverser(str)
  array = str.split('')
  reversed_str = ''

  (array.size - 1).downto(0) do |i|
    reversed_str << array[i]
  end

  reversed_str
end

p string_reverser("hello") == "olleh"


# iterate from first to last
# case i
# when % 15.zero? p FizzBuzz
# 5
# 3
# else print i

def fizzbuzz(first, last)
  result = []

  first.upto(last) do |i|
    result << case
              when (i % 15).zero? then 'FizzBuzz'
              when (i % 5).zero?  then 'Buzz'
              when (i % 3).zero?  then 'Fizz'
              else i
              end
  end

  result.join(', ')
end

p fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"

# 3 Fizz
# 5 Buzz
# 15 FizzBuzz


colors = %w(green yellow black white)

def remove_vowels(arr)
  arr.map { |word| word.gsub(/[aeiou]/, '') }
end

p remove_vowels(colors) == %w(grn yllw blck wht)


# takes a string
# returns a boolean whether the string has a balanced set of parantheses

# convert the string into an array
# initialize a opening_parenthese var at 0
# iterate through the array
# - if char is '(' then add 1 to opening parentheses
# - if char is ')' :
#   > and opening parentheses is = 0 then return false
#   > and op = 1 then remove 1
# - at the end, if par = 0 then true else false

def balancer(string)
  parentheses = 0

  string.each_char do |char|
    case char
    when '(' then parentheses += 1
    when ')' then parentheses -= 1
    end

    return false if parentheses < 0
  end

  parentheses.zero? ? true : false
end

p balancer('hi')      == true
p balancer('(hi')     == false
p balancer('((hi))')  == true
p balancer(')hi(')    == false
p balancer('())(')    == false


# Print all the primes between 2 numbers without using the prime class

# initialize prime empty array
# iterate from first to last
# - for each integer, iterate from 2 to the int - 1
#   > add the integer to the prime array if all iterations return modulo x != 0
# join the prime array into a string with ,

# form a range with the first to the last
# select from this range
# all the int where int % (2...int) != 0

def prime?(n)
  (2...n).all? { |x| n % x != 0 }
end

def find_primes(first, last)
  (first..last).select { |int| prime?(int) }.join(', ')
end

p find_primes(3, 10) == '3, 5, 7'
p find_primes(3, 7)  == '3, 5, 7'
p find_primes(8, 9)  == ''
