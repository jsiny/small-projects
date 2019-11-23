require "cmath"

RADIALS = ('A'..'H').to_a
ANGLE = 0.78539816339744830961568837307573772905

def spider_to_fly(spider, fly)
  side1 = spider[1].to_i
  side2 = fly[1].to_i
  angle = (RADIALS.index(spider[0]) - RADIALS.index(fly[0])) * ANGLE

  side3_squared = side1**2 + side2**2 - 2 * side1 * side2 * CMath.cos(angle)
  Math.sqrt(side3_squared)
end