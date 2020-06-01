def is_anagram(s, t)
  s == t || s.chars.sort == t.chars.sort    
end

p is_anagram("anagram", "nagaram") == true
p is_anagram("rat", "car") == false
p is_anagram("", "") == true
p is_anagram("a", "a") == true