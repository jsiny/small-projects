# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

def max_profit(prices)
  return 0 if prices == prices.sort.reverse

  profit = 0
  i = 0

  until i >= prices.size - 1
    if prices[i] < prices[i + 1]
      j = find_next_peak(prices[i + 1..-1]) + i + 1
      profit += prices[j] - prices[i]
      i = j
    end
    i += 1
  end

  profit
end

def find_next_peak(arr)
  return 0 if arr.size == 1
  arr[0...-1].each_with_index { |n, i| return i if n > arr[i + 1] }
  arr.size - 1
end

p find_next_peak([5, 3, 6, 4]) == 0
p find_next_peak([3, 6, 4])    == 1
p find_next_peak([4])          == 0 

p max_profit([7,1,5,3,6,4]) == 7
p max_profit([1,2,3,4,5])   == 4
p max_profit([7,6,4,3,1])   == 0
