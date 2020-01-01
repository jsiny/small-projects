# https://www.codewars.com/kata/string-incrementer/train/ruby

def increment_string(str)
  base_str = str.split(/[0-9]/).join
  num = extract_num(str)
  base_str + num.next
end

def extract_num(str)
  num = str.chars.select { |i| i =~ /[0-9]/ }
  num.empty? ? '0' : num.join
end


p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"
p increment_string("f00bar") #== "f00bar1"
p increment_string("f00b4r") #== "f00b4r1"
