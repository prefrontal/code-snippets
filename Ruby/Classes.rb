# -- Ruby Classes ------------------------------------------------------------------

# Basic class

	class MyClass
		def initialize (aVariable)
			@instance_variable = aVariable
		end
	
		# Some stuff
	end
	
	# Methods are public by default

# Make a subclass

	class DerivedClass < BaseClass
		# Some stuff
	end

# Variables
	
	# Instance variable
	@variable_name
	
	# Class variable
	@@variable_name
	
	# Global variable
	$variable_name
	
# Setup instance variable accessors
	
	attr_reader :variable_name      # Read
	attr_writer :variable_name		# Write
	attr_accessor :variable_name    # Both
	
# Call superclass method

	def some_method
		super(optional args)
		# Some stuff
	end