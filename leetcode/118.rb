# https://leetcode.com/problems/pascals-triangle/

def generate(rows)
  return []                     if rows == 0
  return [[1]]                  if rows == 1
  return generate(1) + [[1, 1]] if rows == 2

  last_result = generate(rows - 1)
  new_row = sum_by_two(last_result.last)
  last_result + [new_row]
end

def sum_by_two(arr)
  result = [1]

  arr.each_with_index do |n, i|
    break if i + 1 == arr.size
    result << n + arr[i + 1]
  end

  result << 1
  result
end

p sum_by_two([1, 2, 1]) == [1, 3, 3, 1]

p generate(1) == [[1]]
p generate(2) == [[1], [1, 1]]
p generate(3) == [[1], [1, 1], [1, 2, 1]]
p generate(4) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
p generate(5) == [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]]
