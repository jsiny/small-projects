# https://leetcode.com/problems/count-and-say/

def count_and_say(n)
  return '1' if n == 1
  convert(count_and_say(n - 1))
end

def convert(str)
  result = ''
  count = 1
  num = str[0]

  (1...str.size).each do |i|
    if str[i] == num
      count += 1
    else
      result += "#{count}#{num}"
      count = 1
      num = str[i]
    end
  end
  result += "#{count}#{num}"
  result
end

p convert('111')   == '31'
p convert('1')     == '11'
p convert('1211')  == '111221'

p count_and_say(1) == '1' 
p count_and_say(2) == '11'
p count_and_say(3) == '21'
p count_and_say(4) == '1211'
p count_and_say(9) == '31131211131221'
