def fizz_buzz(n)
  (1..n).map do |x|
    next 'FizzBuzz' if (x % 15).zero?
    next 'Buzz'     if (x % 5).zero?
    next 'Fizz'     if (x % 3).zero?
    x.to_s
  end
end

p fizz_buzz(1)
p fizz_buzz(15)
