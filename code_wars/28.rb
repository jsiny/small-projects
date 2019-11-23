# Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola"
# drink vending machine; there are no other people in the queue.

# The first one in the queue (Sheldon) buys a can, drinks it and doubles!
# The resulting two Sheldons go to the end of the queue.
# Then the next in the queue (Leonard) buys a can, drinks it and gets to the
# end of the queue as two Leonards, and so on.

# For example, Penny drinks the third can of cola and the queue will look
# like this:

# Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny

# 5: Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny, Rajesh, Rajesh
# 6: Sheldon, Sheldon, Leonard, Leonard, Penny, Penny, Rajesh, Rajesh, Howard, Howard
# 7: Sheldon, Leonard, Leonard, Penny, Penny, Rajesh, Rajesh, Howard, Howard, Sheldon, Sheldon
# 8: Leonard, Leonard, Penny, Penny, Rajesh, Rajesh, Howard, Howard, Sheldon, Sheldon, Sheldon, Sheldon
# 9: Leonard, Penny, Penny, Rajesh, Rajesh, Howard, Howard, Sheldon, Sheldon, Sheldon, Sheldon, Leonard, Leonard
# 10: Penny, Penny, Rajesh, Rajesh, Howard, Howard, Sheldon, Sheldon, Sheldon, Sheldon, Leonard, Leonard, Leonard, Leonard

# Write a program that will return the name of the person who will drink
# the n-th cola.

# Input
# The input data consist of an array which contains at least 1 name, and
# single integer n which may go as high as the biggest number your language
# of choice supports (if there's such limit, of course).

# Output / Examples
# Return the single line — the name of the person who drinks the n-th can
# of cola. The cans are numbered starting from 1.


# first round: 2**1
# - Sheldon is 1st, and 1 + (5) * 2**1 = 6
# - Leonard is 2nd, and 2 +


names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]

p who_is_next(names, 1) == "Sheldon"
p who_is_next(names, 4) == "Rajesh"
p who_is_next(names, 5) == "Howard"
p who_is_next(names, 6) == "Sheldon"
p who_is_next(names, 7) == "Sheldon"
p who_is_next(names, 9) == "Leonard"
p who_is_next(names, 52) == "Penny"
p who_is_next(names, 7230702951) == "Leonard"
