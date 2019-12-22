# https://leetcode.com/problems/climbing-stairs/

def climb_stairs(n)
  # return n if n <= 2
  # climb_stairs(n - 1) + climb_stairs(n - 2)

  return n if n <= 2

  i, j = [1, 2]
  (n - 3).times do
    j, i = i + j, j
  end

  i + j
end

p climb_stairs(2)  == 2
p climb_stairs(3)  == 3
p climb_stairs(4)  == 5
p climb_stairs(5)  == 8
p climb_stairs(6)  == 13
p climb_stairs(38) == 63_245_986

# Last invocation:
# using recursion: 1.62 sec
# without recursion: 6.7e-06 sec

=begin
-- 4 --
1 1 1 1   n

2 1 1     n - 1
1 2 1
1 1 2

2 2       n - 2 ou n / 2

-- 5 --
1 1 1 1 1     n

2 1 1 1       n - 1
1 2 1 1
1 1 2 1
1 1 1 2

1 2 2         n - 2
2 1 2
2 2 1

-- 6 --
1 1 1 1 1 1    n

1 1 1 1 2      n - 1
1 1 1 2 1
1 1 2 1 1
1 2 1 1 1
2 1 1 1 1

1 1 2 2       n
2 2 1 1
1 2 1 2
2 1 2 1
2 1 1 2
1 2 2 1

2 2 2         n/2
=end
