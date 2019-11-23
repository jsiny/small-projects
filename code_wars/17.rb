# Sherlock has to find suspects on his latest case.
# He will use your method, dear Watson.

# "Suspect" in this case is a person which has something
# not allowed in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and
# value is one or few things represented by an array of numbers
# (can be nil or empty array if empty).

# Write method which helps Sherlock to find suspects.
# If no suspect is found or there are no pockets (pockets == nil),
# the method should return nil.

# input:
# - a hash (pockets), with keys being people and values being their pockets
# - an array (allowed_items)

# output:
# - an array of suspects (the keys from the hash) or nil

# algo
# - create global_pockets array = pockets.values
# - iterate through the pockets (ex: [2, 5])
# - loop through the sub-array
# - if an element is not allowed then add the whole subarray to the forbidden_items

# - select the global_pockets elements that are not in the allowed_items arr
# - for each element, add the key to a suspect array
# - return this array, unique

# use Array(items) instead of [items] because of the nil case:
# Array(nil)
# => []
# [nil]
# => [nil]

def find_suspects(pockets, allowed_items)
  suspects = pockets.each_with_object([]) do |(person, items), suspects|
    suspects << person unless (Array(items) - allowed_items).empty?
  end
  suspects.empty? ? nil : suspects
end

pockets = {
  bob: [1],
  tom: [2, 5],
  jane: [7]
}

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2])  == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]

pockets = {}
p find_suspects(pockets, [1, 2]) == nil

pockets = { julia: nil, meg: [] }
p find_suspects(pockets, [1, 6]) == nil

pockets = {:tom=>[2], :bob=>[2], :julia=>[3], :meg=>[3]}
p find_suspects(pockets, []) == [:tom, :bob, :julia, :meg]

# Shorter solution

def find_suspects(pockets, allowed_items)
  suspects = pockets.select { |name, items| ([*items] - allowed_items).any? }.keys
  suspects.any? ? suspects : nil
end

pockets = {:tom=>[2], :bob=>[2], :julia=>[3], :meg=>[3]}
p find_suspects(pockets, []) == [:tom, :bob, :julia, :meg]

pockets = {
  bob: [1],
  tom: [2, 5],
  jane: [7]
}

p find_suspects(pockets, [1, 2]) == [:tom, :jane]

