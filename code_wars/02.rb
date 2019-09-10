def findNextSquare(n)
  root = Math.sqrt(n)
  root.to_i == root ? (root + 1)**2 : - 1
end

p findNextSquare(121) == 144
p findNextSquare(625) == 676
p findNextSquare(114) == -1 # since 114 is not a perfect
