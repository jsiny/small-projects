def add_digits(num)
  num < 10 ? num : add_digits(num.digits.sum)
end

p add_digits(38) == 2