# Given an array of intgers , Find the minimum sum which is obtained from summing each Two integers product .

# Notes
# Array/list will contain positives only .
# Array/list will always has even size

# Examples
# minSum({5,4,2,3}) ==> return (22)

def min_sum(arr)
  products = []
  arr.sort!.each_with_index { |n, i| products << n * arr[-(1+i)] }
  products.sum / 2
end

p min_sum([5,4,2,3]) == 22
p min_sum([12,6,10,26,3,24]) == 342
p min_sum([9,2,8,7,5,4,0,6]) == 74
p min_sum([1,2]) == 2
p min_sum([]) == 0
