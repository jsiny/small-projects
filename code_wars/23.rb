# Let us consider this example (array written in general format):

# ls = [0, 1, 3, 6, 10]

# Its following parts:

# ls = [0, 1, 3, 6, 10]
# ls = [1, 3, 6, 10]
# ls = [3, 6, 10]
# ls = [6, 10]
# ls = [10]
# ls = []

# The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0]

# The function parts_sums will take as parameter a list ls and
# return a list of the sums of its parts as defined above.

# initialize result []
# iterate through ls with the index
# sum up all the array [i..-1] and add the result to result
# return result


def parts_sums(ls)
  (ls + [0]).map.with_index { |_, i| ls[i..-1].sum }
end

ls = [1, 2, 3, 4, 5, 6]
p parts_sums(ls) == [21, 20, 18, 15, 11, 6, 0]

ls = [744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358]
p parts_sums(ls) == [10037855, 9293730, 9292795, 9292388, 9291934,
                    9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]

# More efficient solution

def parts_sums(ls)
  ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
end
