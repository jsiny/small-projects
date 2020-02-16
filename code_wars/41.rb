# https://www.codewars.com/kata/string-incrementer/train/ruby

def increment_string(str)
  return str + '1' unless str[-1] =~ /\d+/
  str.sub(/\d*$/, str.scan(/\d+$/).join.next)
end

# First line: when the str doesn't end with a number
# Second line: replace last digits by the next digit

p increment_string('foo')       == 'foo1'
p increment_string('foobar001') == 'foobar002'
p increment_string('foobar1')   == 'foobar2'
p increment_string('foobar00')  == 'foobar01'
p increment_string('foobar99')  == 'foobar100'
p increment_string('')          == '1'
p increment_string('f00bar')    == 'f00bar1'
p increment_string('f00b4r')    == 'f00b4r1'
p increment_string('f00bar3')   == 'f00bar4'

# Clever kata

def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end

p increment_string('foo')       == 'foo1'
p increment_string('foobar001') == 'foobar002'
p increment_string('foobar1')   == 'foobar2'
p increment_string('foobar00')  == 'foobar01'
p increment_string('foobar99')  == 'foobar100'
p increment_string('')          == '1'
p increment_string('f00bar')    == 'f00bar1'
p increment_string('f00b4r')    == 'f00b4r1'
p increment_string('f00bar3')   == 'f00bar4'
