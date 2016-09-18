# -- Dateutil Parsing --------------------------------------------------------------------

# Parse a date string

	from dateutil.parser import *
	
	parse("Thu Sep 25 10:36:28 2003")
	
# Use a specified default date/time

	DEFAULT = datetime(2003, 9, 25)
	
	parse("Thu Sep 25 10:36:28", default=DEFAULT)
	
# ----------------------------------------------------------------------------------------