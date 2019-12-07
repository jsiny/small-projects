# https://leetcode.com/problems/add-binary/

def add_binary(a, b)
  decimal_sum = a.to_i(2) + b.to_i(2)
  decimal_sum.to_s(2)
end

p add_binary('11', '1') == '100'
p add_binary('1010', '1011') == '10101'