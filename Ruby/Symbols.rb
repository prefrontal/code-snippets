# -- Ruby Symbols ------------------------------------------------------------------

# There is only one copy of a symbol at a given time
# Often used as hash keys

# Symbol Definition

	:symbol_name
	
# Converting symbols

	# Symbol to string
	:sasquatch.to_s
	:sasquatch.id2name
	
	# String to symbol
	"sasquatch".to_sym
	"sasquatch".intern
	
# Checking if an object responds to a method name

	objectName.respond_to? :methodName
	
