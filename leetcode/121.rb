# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

def max_profit(prices)
  profit = 0
  prices.each_with_index do |buying_price, idx|
    break if idx >= prices.size - 1
    selling_price = prices[(idx + 1)..-1].max
    difference = selling_price - buying_price
    profit = difference if difference > profit
  end
  profit
end