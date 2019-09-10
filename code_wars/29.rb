# Move the first letter of each word to the end of it, then add "ay" to the
# end of the word. Leave punctuation marks untouched.

# convert the str into an array
# map the array
# > for each word, convert the word into an array

def pig_it(str)
  str.split.map { |w| w =~ /[a-z]/i ? w[1..-1] + w[0] + 'ay' : w }.join(' ')
end

# Examples
p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('Hello world !')     == 'elloHay orldway !'