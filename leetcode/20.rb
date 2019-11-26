# https://leetcode.com/problems/valid-parentheses/

OPENINGS = ['(', '[', '{']
PAIRS = { ')' => '(', ']' => '[', '}' => '{' }

def is_valid(s)
  s.chars.each_with_object([]) do |char, opened|
    if OPENINGS.include?(char)
      opened << char
    else
      return false unless PAIRS[char] == opened.pop
    end
  end.empty?
end

p is_valid('()')      == true
p is_valid('()[]{}')  == true
p is_valid('(]')      == false
p is_valid('([)]')    == false
p is_valid('{[]}')    == true
p is_valid('')        == true
p is_valid('(')       == false
