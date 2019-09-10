# Create a function that takes a Roman numeral as its argument and returns
# its value as a numeric decimal integer. You don't need to validate the form
# of the Roman numeral.

# Modern Roman numerals are written by expressing each decimal digit of
# the number to be encoded separately, starting with the leftmost digit
# and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC)
# and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII).
# The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.

# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1,000

# algo
# initialize int var at 0
# convert the str into an array of chars
# iterate through the array
# - if char = M then add 1000 to result
# - if char = D then add 500
# - if char = C then:
# > if followed by M remove 100
# > else add 100
# - if char = L then add 50
# - if char = X then
# > if followed by L then remove 10
# > if followed by C then remove 10
# > else add 10
# - if char = V then add 5
# - if char = I then
# > if followed by V then remove 1
# > if followed by X then remove 1

# initialize int var at 0
# convert the str into an array of chars
# iterate through the array (char.to_sym)
# if EXCEPTIONS.include?(char) then substract ROMAN(char)
# else, add ROMAN(char)
# return int

ROMAN = { 'I' => 1,
          'V' => 5,
          'X' => 10,
          'L' => 50,
          'C' => 100,
          'D' => 500,
          'M' => 1000 }

EXCEPTIONS = { 'C' => %w(M),
               'X' => %w(L C),
               'I' => %w(V X) }

def solution(roman)
  result = 0
  arr = roman.chars

  arr.each_with_index do |ch, i|
    result =  if EXCEPTIONS.has_key?(ch) && EXCEPTIONS[ch].include?(arr[i + 1])
                result - ROMAN[ch]
              else
                result + ROMAN[ch]
              end
  end
  result
end

def solution(roman)
  arr = roman.chars
  arr.each_with_object([]).with_index do |(ch, result), i|
    result << (EXCEPTIONS.has_key?(ch) && EXCEPTIONS[ch].include?(arr[i + 1]) ? - ROMAN[ch] : ROMAN[ch] )
  end
    .sum
end

p solution('I')           == 1
p solution('IV')          == 4
p solution('VI')          == 6
p solution('XIV')         == 14
p solution('XXI')         == 21
p solution('LXXXIX')      == 89
p solution('XCI')         == 91
p solution('CMLXXXIV')    == 984
p solution('M')           == 1000
p solution('MDCCCLXXXIX') == 1889
p solution('MCMLXXXIX')   == 1989
