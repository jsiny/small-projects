# Some new cashiers started to work at your restaurant.

# They are good at taking orders, but they don't know how to capitalize words,
# or use a space bar!

# All the orders they create look something like this:

# "milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"

# The kitchen staff are threatening to quit, because of how difficult it is to
# read the orders.

# Their preference is to get the orders as a nice clean string with spaces and
# apitals like so:

# "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

# The kitchen staff expect the items to be in the same order as they appear
# in the menu.

# The menu items are fairly simple, there is no overlap in the names of the items:

# 1. Burger
# 2. Fries
# 3. Chicken
# 4. Pizza
# 5. Sandwich
# 6. Onionrings
# 7. Milkshake
# 8. Coke

# Algorithm
# initialize order array []
# Create Menu constant array
# iterate through the array
# > for each menu eleemnt, check the string for a match
# > if so, add the element to the order
# > there can be several elements added
# return order as a string

# find match
# look for the first letter
# if found, check the string slice with 2nd parameter = menu.size
# 'Burger'.size => 6
# casecmp

MENU_1 = %w(Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke)

def get_order(order)
  MENU_1.each_with_object([]) do |dish, ord|
    order.chars.each_with_index do |char, i|
      ord << dish if order[i, dish.size] == (dish.downcase)
    end
  end
      .join(' ')
end

p get_order("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza") ==
  "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

p get_order("pizzachickenfriesburgercokemilkshakefriessandwich") ==
  "Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"

MENU  = "burger fries chicken pizza sandwich onionrings milkshake coke".split
ITEMS = /#{MENU.join("|")}/

def get_order(order)
  order.scan(ITEMS)
    .sort_by { |item| MENU.index(item) }
    .map(&:capitalize)
    .join(" ")
end

p get_order("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza") ==
  "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

p get_order("pizzachickenfriesburgercokemilkshakefriessandwich") ==
  "Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"
