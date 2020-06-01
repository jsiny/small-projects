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

# Faster solution (not mine)

# create an empty current letters array
# initialize a var at 0 to keep track of the longest substring so far
# iterate over each character of the string:
# - if the current letters array includes the current char:
# -- reassign longest to the max between longest and current letters size
# -- define the starting index of the new substring at the next letter after the duplicate
# -- reassign current to start at the new starting index instead
# - add the current char to the current letters array
# return the highest value between the longest var or the size of the current letters

def length_of_longest_substring(s)
  current = []
  longest = 0

  s.each_char do |char|
    if current.include?(char)
      longest = [longest, current.size].max
      index = current.index(char) + 1
      current = current[index..-1] # remove first letters until duplicate value
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
p length_of_longest_substring('Nathan is trying') == 8 # 's trying'
