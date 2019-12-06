# https://leetcode.com/problems/climbing-stairs/

def climb_stairs(n)

end

p climb_stairs(2) == 2
p climb_stairs(3) == 3
p climb_stairs(4) == 5
p climb_stairs(5) == 8

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