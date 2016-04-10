# -- Ruby Ranges ------------------------------------------------------------------

# Basic Ranges

	# The integers 1 through 10, including 10
	1..10
	
	# The integers 1 through 10, excluding 10
	1...10
	
# Test for inclusion in a range

	cold_war = 1945..1989
	
	# Member, include, and cover are synonyms...
	cold_war.include? 1980
	cold_war.member? 1980
	cold_war.cover?	1980
	

