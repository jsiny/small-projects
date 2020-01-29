# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

def max_profit(prices)
  return 0 if prices == prices.sort.reverse
  
  result = 0

  prices[0...-1].each_with_index do |buying_price, i|
    selling_price = prices[i + 1..-1].max
    profit = selling_price - buying_price
    result = profit if profit > result
  end

  result
end

p max_profit([7,1,5,3,6,4]) == 5
p max_profit([7,6,4,3,1])   == 0
