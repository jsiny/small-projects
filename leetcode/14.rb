# https://leetcode.com/problems/longest-common-prefix/

def longest_common_prefix(strs)
  str = strs.min_by(&:size).dup || ''

  until str == '' do
    break if strs.all? { |word| word.start_with?(str) }
    str = str.chop
  end

  str
end

p longest_common_prefix(['flower', 'flow', 'flight']) == 'fl'
p longest_common_prefix(['dog', 'racecar', 'car']) == ''
p longest_common_prefix([]) == ''
p longest_common_prefix(['ca', 'a']) == ''

# shortest word as base
# remove last letter until all the other words return truthy with regex