def find_number_of_previous_odd_numbers(row)
  previous_numbers = 0

  for num in 1...row
  previous_numbers += num
  num += 1
  end
  previous_numbers
end

def find_odd_by_index(n)
  return 1 if n == 0
  2 * n + 1
end

def row_sum_odd_numbers(n)

  a = find_odd_by_index(find_number_of_previous_odd_numbers(n))
  result = n * a
  i = 1
  while i < n
    x = (n - i) * 2
    result += x
    i += 1
  end

  result

end

p row_sum_odd_numbers(1)
p row_sum_odd_numbers(2)
p row_sum_odd_numbers(41)