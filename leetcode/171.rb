# https://leetcode.com/problems/excel-sheet-column-number/

# First attempt

def title_to_number(s)
  sum = 0

  s.chars.reverse.each_with_index do |letter, i|
    sum += (letter.ord - 64) * 26**i
  end

  sum
end

# Second attempt

def title_to_number(s)
  s.chars.map { |x| x.ord - 64 }.reduce(0) { |sum, x| sum * 26 + x }
end

p title_to_number("A")  == 1
p title_to_number("AB") == 28
p title_to_number("ZY") == 701
