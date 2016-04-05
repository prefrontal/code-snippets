# -- Ruby Modules ------------------------------------------------------------------

# You can think of modules as being very much like classes, only modules can't create 
# instances and can't have subclasses. They're just used to store things.

# Basic module

	module ModuleName
		PI = 3.14159
	end
	
# Using modules

	require "ModuleName"
	
# Calling elements of a module

	ModuleName::PI
	
# Creating Mixins

	# include mixes a module's methods at an instance level
	include ModuleName
	
	# extend mixes a module's methods at a class level
	extend ModuleName