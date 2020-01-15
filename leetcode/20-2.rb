OPENINGS = ['(', '[', '{']
PAIRS    = { '(' => ')', '[' => ']', '{' => '}' }

def is_valid(s)
  opened = []

  s.each_char do |c|
    next if c =~ /(\w| )/
    if OPENINGS.include?(c)
      opened << c
      next
    elsif PAIRS[opened.last] == c
      opened.pop
      next
    end
    return false
  end
  
  opened.empty?
end

p is_valid("()")      == true
p is_valid("()[]{}")  == true
p is_valid("(]")      == false
p is_valid("([)]")    == false
p is_valid("{[]}")    == true
p is_valid("ah (n)")  == true
p is_valid("a[b(x)]") == true
p is_valid("{")       == false
