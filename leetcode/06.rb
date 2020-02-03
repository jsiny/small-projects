# https://leetcode.com/problems/zigzag-conversion/

def convert(s, num_rows)
  return s if num_rows == 1

  res  = Array.new(num_rows) { Array.new }
  i    = 0    # top-to-bottom-to-top index
  j    = 0    # left-to-right index
  down = true

  s.each_char do |char|
    if i == num_rows
      down = false
      i -= 2
      j += 1
    elsif i == -1
      down = true
      i += 2
    end

    res[i][j] = char

    if down
      i += 1
    else
      i -= 1
      j += 1
    end
  end

  res.map(&:compact).flatten.join
end

p convert("ABC", 1) == "ABC"

p convert("PAYPALISHIRING", 3) == "PAHNAPLSIIGYIR"

# P   A   H   N
# A P L S I I G
# Y   I   R

# [[], [], []]
# [['P'], [], []]             [0][0]
# [['P'], ['A'], []]          [1][0]
# [['P'], ['A'], ['Y']]       [2][0]
# [['P'], ['A', 'P'], ['Y']]  [1][1]

p convert("PAYPALISHIRING", 4) == "PINALSIGYAHRPI"

# P     I    N
# A   L S  I G
# Y A   H R
# P     I

p convert("PAYPALISHIRING", 5) == "PHASIYIRPLIGAN"

# P       H
# A     S I
# Y   I   R
# P L     I G
# A       N