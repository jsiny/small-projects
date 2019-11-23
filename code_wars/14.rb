# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1000

UNITS = { 1 => 'I',
          2 => 'II',
          3 => 'III',
          4 => 'IV',
          5 => 'V',
          6 => 'VI',
          7 => 'VII',
          8 => 'VIII',
          9 => 'IX' }

DOZENS = {  1 => 'X',
            2 => 'XX',
            3 => 'XXX',
            4 => 'XL',
            5 => 'L',
            6 => 'LX',
            7 => 'LXX',
            8 => 'LXXX',
            9 => 'XC' }

HUNDREDS = {  1 => 'C',
              2 => 'CC',
              3 => 'CCC',
              4 => 'CD',
              5 => 'D',
              6 => 'DC',
              7 => 'DCC',
              8 => 'DCCC',
              9 => 'CM' }

THOUSAND = 'M'

# Algo
# - initialize result array
# - modulo 10, use the remainder for the units
# - unshift the array
# - modulo 100 for the dozens
# - modulo 1000 for the hundreds
# - / 1000 for the amount of M to be added
# join result array into a string

def solution(n)
  unit = UNITS[n % 10]
  dozen = DOZENS[(n % 100) / 10]
  hundred = HUNDREDS[(n % 1000) / 100]
  thousand = THOUSAND * (n / 1000)
  [thousand, hundred, dozen, unit].join
end

# Using Recursion

NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution(number)
  return '' if number <= 0
  NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end



p solution(1) == 'I'
p solution(4) =='IV'
p solution(6) =='VI'
p solution(14) == 'XIV'
p solution(21) == 'XXI'
p solution(89) == 'LXXXIX'
p solution(91) == 'XCI'
p solution(984) == 'CMLXXXIV'
p solution(1000) == 'M'
p solution(1889) == 'MDCCCLXXXIX'
p solution(1989) == 'MCMLXXXIX'
