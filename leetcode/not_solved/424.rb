# https://leetcode.com/problems/longest-repeating-character-replacement/
# not solved


# def character_replacement(s, k)
#   tested_letters = s.chars.uniq
#   longest = 0

#   tested_letters.each do |letter|
#     counter = 0

#     s.each_char.with_index do |char, i|
#       # if k == counter
#       #   next
#       #   # ?
#       # end
#       current_letters = []
#       (i...s.size).each do |j|
#         if letter == s[j]
#           current_letters << s[j]
#         else
#           unless counter?
          
#         end
#       end
#     end
#   end

#   longest
# end

p character_replacement('ABAB', 2)      #== 4
p character_replacement('AABABBA', 1)   #== 4
p character_replacement('ACCACCBA', 1)  # == 5

=begin
inputs:
- string with capital letters (26 diff possibilities)
- positive integer

output: integer

algorithm:
- find all letters that will be tested (unique chars)
- iterate through these letters:
-- for letter = 'a', iterate thru all chars of the string with index
--- if current char == letter, then increment length
--- else, change it to letter and increment counter and length
--- increment index until it's equal to string size
-- when counter == k,
--- reassign length var to [length, substr_length].max
- return length



=end

