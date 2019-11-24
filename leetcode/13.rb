# https://leetcode.com/problems/roman-to-integer/

RELATIONS = { 'M' => [], 'C' => %w(D M), 'X' => %w(L C), 'I' => %w(V X),
              'D' => [], 'L' => [], 'V' => [] }

VALUES = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10,
           'V' => 5,    'I' => 1 }

def roman_to_int(s)
  s.chars.map.with_index do |char, i|
    if RELATIONS[char].include?(s[i + 1])
      - VALUES[char]
    else
      VALUES[char]
    end
  end.sum
end

p roman_to_int('III')     == 3
p roman_to_int('IV')      == 4
p roman_to_int('IX')      == 9
p roman_to_int('LVIII')   == 58
p roman_to_int('MCMXCIV') == 1994
