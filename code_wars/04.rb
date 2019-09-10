def isValidWalk(walk)
  (walk.count('n') == walk.count('s')) && (walk.count('w') == walk.count('e')) && walk.size == 10
end

#some test cases for you...
p isValidWalk(['n','s','n','s','n','s','n','s','n','s']) == true
p isValidWalk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p isValidWalk(['w']) == false
p isValidWalk(['n','n','n','s','n','s','n','s','n','s']) == false
