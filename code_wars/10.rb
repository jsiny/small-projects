# You need to return a string that looks like a diamond shape when printed on the screen, using asterisk (*) characters. Trailing spaces should be removed, and every line must be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is not possible to print a diamond of even or negative size.

# Examples
# A size 3 diamond:

#  *
# ***
#  *
# ...which would appear as a string of " *\n***\n *\n"

# A size 5 diamond:

#   *
#  ***
# *****
#  ***
#   *
# ...that is: " *\n ***\n*****\n ***\n *\n"

def diamond(n)
  return nil unless n.remainder(2) == 1
  diamonds = []

  counter = 1
  until counter > n
    spaces = (n - counter) / 2
    diamonds << ' ' * spaces + '*' * counter + "\n"
    counter += 2
  end

  counter = n - 2
  until counter <= 0
    spaces = (n - counter) / 2
    diamonds << ' ' * spaces + '*' * counter + "\n"
    counter -= 2
  end

  diamonds.join
end

p diamond(1) == "*\n"
p diamond(3) == " *\n***\n *\n"
p diamond(5) == "  *\n ***\n*****\n ***\n  *\n"
p diamond(0) == nil
p diamond(-3) == nil
p diamond(2) == nil

# Warrior solution

def diamond(n)
  return if n.even? || n < 1

  triangle = (1..n).step(2).map { |i| " " * ((n-i)/2) + "*" * i + "\n" }
  (triangle + triangle.reverse[1..-1]).join
end
