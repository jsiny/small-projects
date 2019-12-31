# https://www.codewars.com/kata/snail

def snail(array)
  result = []
  
  until array.empty?
    result += array.shift
    array = array.transpose.reverse
  end

  result
end

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]

p snail(array) == [1,2,3,6,9,8,7,4,5]

p snail([[]])  == []

array = [[1,2,3,1],
         [4,5,6,4],
         [7,8,9,7],
         [7,8,9,7]]

p snail(array) == [1,2,3,1,4,7,7,9,8,7,7,4,5,6,9,8] 

array = [[1,2,3,1,2],
         [4,5,6,4,5],
         [7,8,9,7,8],
         [7,8,9,7,9],
         [1,2,3,1,2]]

p snail(array) == [1,2,3,1,2,5,8,9,2,1,3,2,1,7,7,4,5,6,4,7,7,9,8,8,9]

array = [[1,2],
         [3,4]]

p snail(array) == [1,2,4,3]

# returns an array of digits

# loop until empty array
# - shift first array
# - push every element of the first array to result arr
# - inverse remaining arr subarrays
# - convert to Matrix obj
# - transpose the matrix and convert it to an array

# return result array

# Awesome kata solution

def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end

