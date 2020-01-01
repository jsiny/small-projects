# https://www.codewars.com/kata/where-my-anagrams-at/train/ruby

def anagram?(w, ref)
  ref.chars.sort == w.chars.sort
end

def anagrams(ref, arr)
  arr.select { |w| anagram?(w, ref) }
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []