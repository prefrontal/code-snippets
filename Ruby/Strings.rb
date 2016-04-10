# -- Ruby Strings ------------------------------------------------------------------

# Access a specific character

	s = "hello"
	s[0]		# "h"
	s[-1]		# "o"
	s[2..4]		# "llo"
	
# Get string length

    myString.length
    
# Split a string

	list = "eggs, milk, cheese and crackers"
	list.split(", ")    # Tokenize
	list.split("")		# Split all characters

# Convert string to other types

	a = "2"
	puts a.to_i    # 2, Integer
	puts a.to_f    # 2.0, Float
	puts a.to_r    # 2/1, Rational
	puts a.to_c    # 2+0i, Complex
	
# String manipulation
    
    # Change case of entire string
    myString.downcase
    mystring.upcase
    
    # Reverse a string
    myString.reverse
    
# Iterate over string

	s = "ABCDEFG"
	s.each_char {|x| puts "#{X}"}
	s.each_byte {|x| puts "#{X}"}
	s.each_line {|x| puts "#{X}"}