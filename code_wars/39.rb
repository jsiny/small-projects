# https://www.codewars.com/kata/55c04b4cc56a697bb0000048

def scramble(str1, str2)
  chars = str1.chars

  str2.chars.each do |n|
    return false unless chars.index(n)
    chars.delete_at(chars.index(n))
  end
  true
end

p scramble('rkqodlw', 'world')              == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak')                == false
p scramble('scriptjavx', 'javascript')      == false
p scramble('javscripts', 'javascript')      == false

# Other ingenious solutions
def scramble(s1, s2)
  s2.chars.uniq.all? { |x| s2.count(x)<=s1.count(x) }
end

def scramble(s1,s2)
  ('a'..'z').all? { |c| s1.count(c) >= s2.count(c) }  
end