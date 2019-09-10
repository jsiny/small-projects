# Instructions
# Output
# Once upon a time, on a way through the old wild west,…
# … a man was given directions to go from one point to another.
# The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite,
# "WEST" and "EAST" too. Going to one direction and coming back the opposite direction is a needless effort.

# How I crossed the desert the smart way.
# The directions given to the man are, for example, the following (depending on the language):

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].

# You can immediatly see that going "NORTH" and then "SOUTH" is not reasonable, better stay to the same place!
# So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:

# ["WEST"]

# Other examples:
# In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.
# What a waste of time! Better to do nothing.

# The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [].

# In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite
# but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].

# Task
# Write a function dirReduc which will take an array of strings and returns an array of strings with the needless
# directions removed (W<->E or S<->N side by side).

# Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"]
# is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other
# and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].

# algorithm
# return final results array when the array size hasn't changed in an interation
# initialize a duplicate array
# store dup array size in a var at the beginning of the loop
# iterate through the array with the index
# check for each element whether the next one is the same as the corresponding value in the hash
# if it is, then remove both elements fromt the dup array
# exit the loop if the array size has remained identical

require 'pry'

DIRECTIONS = {  "NORTH" => "SOUTH",
                "SOUTH" => "NORTH",
                "WEST"  => "EAST",
                "EAST"  => "WEST"  }

def dirReduc(directions)
  cloned_directions = directions.dup

  loop do
    iterative_directions = cloned_directions.dup
    size = cloned_directions.size

    iterative_directions.each_with_index do |dir, i|
      if dir == DIRECTIONS[directions[i + 1]]
        cloned_directions.delete_at(i)
        cloned_directions.delete_at(i + 1)
        binding.pry
        break
      end
    end

    break if cloned_directions.size == size
  end
  cloned_directions
end

p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) #== ["WEST"]

# p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"]) == ["NORTH", "WEST", "SOUTH", "EAST"]
