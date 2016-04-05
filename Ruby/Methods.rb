# -- Ruby Methods ------------------------------------------------------------------

# Basic method

	def methodName 
	   puts "Text"
	end
	
	def methodName (var1, var2)
		puts "Text"
	end

# Default parameter values

	def methodName (var1=value1, var2=value2)
	   puts "Stuff"
	end

# Variable number of inputs

	def method (*args)
		if args.length > 2
			puts "More than two"
		end
	end