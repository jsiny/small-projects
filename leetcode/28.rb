# https://leetcode.com/problems/implement-strstr/

def str_str(haystack, needle)
  return 0 if needle.empty?

  left = 0
  right = needle.size - 1

  while right < haystack.size
    return left if needle == haystack[left..right]
    left += 1
    right +=1
  end

  -1
end

p str_str('hello', 'll')     == 2 
p str_str('aaaaaaaa', 'bba') == -1
p str_str('hello', '')       == 0
