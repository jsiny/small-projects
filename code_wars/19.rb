# Given a string that includes alphanumeric characters ('3a4B2d')
# return the expansion of that string: The numeric values represent the
# occurrence of each letter preceding that numeric value. There should be
# no numeric characters in the final string. Empty strings should return an
# empty string.

# The first occurrence of a numeric value should be the number of times each
# character behind it is repeated, until the next numeric value appears.

# If there are two consecutive numeric characters the first one is ignored.

# If there are two consecutive alphabetic characters then the first character
# has no effect on the one after it.

# Your code should be able to work for both lower and capital case letters.

# algo
# - initialize multiple var at 1
# - initialize result string
# - split the string for each chars
# - iterate through the chars
# - if char is a digit then store this value in multiple var
# - if it isn't, add this char multiplied by the multiple var into result string
# - return string

def string_expansion(s)
  multiple = 1
  s.chars.each_with_object([]) do |char, str|
    char =~ /[0-9]/ ? multiple = char.to_i : str << char * multiple
  end
   .join
end

p string_expansion('3D2a5d2f')   == 'DDDaadddddff'
p string_expansion('3abc')       == 'aaabbbccc'       # correct
p string_expansion('3abc')       != 'aaabc'           # wrong
p string_expansion('3abc')       != 'abcabcabc'       # wrong
p string_expansion('3d332f2a')   == 'dddffaa'
p string_expansion('abcde')      == 'abcde'
p string_expansion('')           == ''
p string_expansion('0d0a0v0t0y') == ''

