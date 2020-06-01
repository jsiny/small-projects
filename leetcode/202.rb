def is_happy(n)
  return true if n == 1
  return false if n == 4

  sum = n.digits.map { |x| x**2 }.sum
  is_happy(sum)
end

p is_happy(19) == true
p is_happy(11) == false
p is_happy(7) == true
p is_happy(1111111) == true