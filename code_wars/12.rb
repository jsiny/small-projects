# Task
# 	In this simple Kata your task is to create a function that turns a string into a Mexican Wave.
# 	You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

# Rules
# 	1.  The input string will always be lower case but maybe empty.
#   2.  If the character in the string is whitespace then pass over it as if it was an empty seat.


# input: string
# output: array of strings

# rules:
# - input string always lowercase
# - whitespace must be ignored for the wave

# algorithm
# initialize result array
# convert the string into an array
# loop through the array
# if index 0 = letter, then upcase that letter and add the all array joined into a string
# into the result
# if it's not a letter, then next
# increment the index by 1
# return the results arrays


def wave(str)
  result = []
  array = str.chars

  array.each_with_index do |char, i|
    if char =~ /[a-z]/
      result << (array[0...i] + [char.upcase] + array[(i+1)..-1]).join
    end
  end
  result
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars",
                      "codeWars", "codewArs", "codewaRs", "codewarS"]

p wave("") == []

p wave("two words") == ["Two words", "tWo words", "twO words", "two Words",
                        "two wOrds", "two woRds", "two worDs", "two wordS"]

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
