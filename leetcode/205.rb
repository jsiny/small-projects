# https://leetcode.com/problems/isomorphic-strings/

def is_isomorphic(s, t)
  0.upto(s.size - 1) do |i|
    return false unless (s[i] == s[i + 1]) == (t[i] == t[i + 1])
  end
  true
end

s = "egg"
t = "add"

p is_isomorphic(s, t) == true

s = "foo"
t = "bar"

p is_isomorphic(s, t) == false

s = "paper"
t = "title"

p is_isomorphic(s, t) == true