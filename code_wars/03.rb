def divisors(n)
  divisors = []
  2.upto(n - 1) { |i| divisors << i if (n % i).zero? }
  divisors.empty? ? "#{n} is prime" : divisors
end

p divisors(12) == [2, 3, 4, 6]
p divisors(25) == [5]
p divisors(13) == '13 is prime'
