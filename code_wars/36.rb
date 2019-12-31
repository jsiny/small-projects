# https://www.codewars.com/kata/calculating-with-functions/

%w[zero one two three four five six seven eight nine].each_with_index do |w, n|
  define_method(w) do |args = nil|
    args ? n.send(*args) : n.to_i
  end
end

%w[plus + minus - times * divided_by /].each_slice(2) do |name, symbol|
  define_method(name) { |n| [symbol, n] }
end

# def plus(n)
#   ["+", n]
# end

p seven(plus(five))     == 12
p seven(times(five))    == 35
p four(plus(nine))      == 13
p eight(minus(three))   == 5
p six(divided_by(two))  == 3
