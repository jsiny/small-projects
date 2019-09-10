def createPhoneNumber(num)
  "(#{num[0,3].join}) #{num[3,3].join}-#{num[6,4].join}"
end


p createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
