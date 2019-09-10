def oddCount(n)
  1.upto(n-1).select { |i| i.odd? }.size
end

p oddCount(15)