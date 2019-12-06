# https://leetcode.com/problems/length-of-last-word/

def length_of_last_word(s)
  return 0 if s.split.empty?
  s.split.last.length
end

p length_of_last_word('hello world') == 5
p length_of_last_word('') == 0
p length_of_last_word(' ') == 0