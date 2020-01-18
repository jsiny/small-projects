# https://leetcode.com/problems/excel-sheet-column-title/

def convert_to_title(n)
  ans = ''
  
  while n > 0 
    num = (n - 1) % 26 + 1
    ans << (num + 64).chr
    n = (n - num) / 26
  end

  ans.reverse    
end

p convert_to_title(1)   == "A"
p convert_to_title(26)  == "Z"
p convert_to_title(28)  == "AB"
p convert_to_title(701) == "ZY"
