# https://leetcode.com/problems/longest-substring-without-repeating-characters/

def length_of_longest_substring(s)
  length = 0
  chars = s.chars
  return chars.size if chars.size <= 2

  chars.each_with_index do |first, i|
    letters = [first]
    chars[(i+1)..-1].each do |char|
      if letters.include?(char)
        length = [letters.size, length].max
        break
      else
        letters << char
      end
      length = [letters.size, length].max
    end
  end
  length
end

# Faster solutpion (not mine)

def length_of_longest_substring(s)
  current = []
  longest = 0

  s.each_char do |char|
    if current.include?(char)
      longest = [longest, current.size].max
      index = current.index(char) + 1
      current = current[index..-1]
    end
    current << char
  end

  [longest, current.size].max
end


p length_of_longest_substring('abcabcbb') == 3  #'abc'
p length_of_longest_substring('bbbbb')    == 1  # 'b'
p length_of_longest_substring('pwwkew')   == 3  # 'wke'
p length_of_longest_substring(' ')        == 1
p length_of_longest_substring('au')       == 2
p length_of_longest_substring('aab')      == 2
