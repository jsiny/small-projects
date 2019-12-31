# https://www.codewars.com/kata/fluent-calculator

class Integer
  def plus;       Calc.new("+", self); end
  def minus;      Calc.new("-", self); end
  def times;      Calc.new("*", self); end
  def divided_by; Calc.new("/", self); end
end

class Calc
  def initialize(*args)
    return unless args.size == 2
    @operator = args.first
    @value    = args.last
  end

  %w(zero one two three four five six seven eight nine).each_with_index do |w,i|
    define_method(w) { retrieve i }
  end

  def retrieve(number)
    @operator ? @value.send(@operator, number) : number
  end
end

p Calc.new.one.plus.two               == 3
p Calc.new.five.minus.six             == -1
p Calc.new.seven.times.two            == 14
p Calc.new.nine.divided_by.three      == 3
p Calc.new.seven.times.two.minus.four == 10

# There are only four operations that are supported (plus, minus, times, 
# divided_by) and 10 digits (zero, one, two, three, four, five, six, seven,
# eight, nine).

# Each calculation consists of one operation only. (untrue with this solution)
