# https://www.codewars.com/kata/55c04b4cc56a697bb0000048

def scramble(str1, str2)
  (str2.chars - str1.chars).empty?
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false

# Can't submit it - Issue with the test cases?