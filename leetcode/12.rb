# https://leetcode.com/problems/integer-to-roman/

VALUES = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
           90 => 'XC',  50 => 'L',   40 => 'XL', 10 => 'X',   9 => 'IX',
           5 => 'V',    4 => 'IV',   1 => 'I' }

def int_to_roman(num)
  roman = ''

  VALUES.each do |int, rom|
    while num >= int
      roman += rom
      num -= int
    end
  end

  roman
end

p int_to_roman(3)     == 'III'
p int_to_roman(4)     == 'IV'
p int_to_roman(9)     == 'IX'
p int_to_roman(58)    == 'LVIII'
p int_to_roman(1994)  == 'MCMXCIV'
