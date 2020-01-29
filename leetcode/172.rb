# https://leetcode.com/problems/factorial-trailing-zeroes/

def trailing_zeroes(n)
  div = 5
  zeroes = 0

  until div > n
    zeroes += n / div
    div *= 5
  end

  zeroes
end

# Second attempt

def trailing_zeroes(n)
  (n / 5).zero? ? 0 : n / 5 + trailing_zeroes(n / 5)
end

p trailing_zeroes(3)              == 0
p trailing_zeroes(5)              == 1
p trailing_zeroes(24)             == 4
p trailing_zeroes(3405)           == 850
p trailing_zeroes(12_001)         == 2998
p trailing_zeroes(1_808_548_329)  == 452_137_076
