# Reverse every other word in a given string, then return the string.
# Throw away any leading or trailing whitespace, while ensuring there is exactly
# one space between each word. Punctuation marks should be treated as if they
# are apart of the word in this kata.

# algo
# - split sentence into words separated by ' '
# - iterate through the array with the index & map
# - if index is odd, then reverse the string
# - join the string back together

def reverse_alternate(str)
  str.split.map.with_index { |word, i| i.odd? ? word.reverse : word }.join(' ')
end

p reverse_alternate("Did it work?") == "Did ti work?"
p reverse_alternate("I really hope it works this time...") == "I yllaer hope ti works siht time..."
p reverse_alternate("Reverse this string, please!") == "Reverse siht string, !esaelp"
p reverse_alternate("Have a beer") == "Have a beer"
p reverse_alternate("") == ""
