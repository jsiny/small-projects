def palindrom?(str)
  str.reverse == str
end

p palindrom?('kayak') == true
p palindrom?('hello') == false

# -----------------------------

def reverse(arr)
  end_i = arr.size - 1
  i = 0

  until i >= arr.size / 2
    arr[i], arr[end_i - i] = arr[end_i - i], arr[i]
    i += 1
  end

  arr  
end

p reverse([1, 2, 3])   == [3, 2, 1]
p reverse(%w[a b c d]) == %w[d c b a]

# -----------------------------

# "Create a function that takes two strings and returns true if they are anagrams or false if they are not. Letter casing and whitespace should be ignored."

def anagrams?(s1, s2)
  return false if s1.downcase == s2.downcase
  
  a1 = s1.downcase.delete(' ').chars.sort
  a2 = s2.downcase.delete(' ').chars.sort

  a1 == a2
end

p anagrams?('hello', 'hello')      == false
p anagrams?('racecar', 'car race') == true
p anagrams?('hello', 'horse')      == false
p anagrams?('HI', 'ih')            == true

# -----------------------------

# Perfect Number Checker: "Create a function that tests whether or not an integer is a perfect number. A perfect number is a number that can be written as the sum of its factors, excluding the number itself. For example, 6 is a perfect number since 1+2+3=6, where 1, 2, and 3 are all factors of 6."

def check_perfect(num)
  multiples_sum = 0

  (1..num / 2).each do |i|
    multiples_sum += i if (num % i).zero?
    break false if multiples_sum > num      # for performance issues
  end

  multiples_sum == num
end

p check_perfect(6)    == true
p check_perfect(28)   == true
p check_perfect(496)  == true 
p check_perfect(12)   == false
