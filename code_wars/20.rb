# Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
# Your task is to process a string with "#" symbols.

# algo
# - initialize result string
# - iterate through the string's chars
# - if char = # then remove last char of result string (chop)
# - else, add char to result string
# - return result string

def clean_string(string)
  string.chars.each_with_object([]) { |ch, arr| ch == '#' ? arr.pop : arr << ch }.join
end

p clean_string("abc#d##c")      ==  "ac"
p clean_string("abc##d######")  ==  ""
p clean_string("#######")       ==  ""
p clean_string("")              ==  ""

# With reduce

def clean_string(string)
  string.chars.reduce('') { |result, c| c == '#' ? result.chop : result << c }
end
