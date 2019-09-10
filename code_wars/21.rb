# Re-order the characters of a string, so that they are concatenated into
# a new string in "case-insensitively-alphabetical-order-of-appearance" order.

# Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing
# the english alphabet letters.

def alphabetized(s)
  s.chars.sort_by(&:downcase).join.delete('^a-zA-Z')
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") ==
 "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"

def alphabetized(s)
  s.scan(/[a-z]/i).sort_by(&:downcase).join
end

p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"

