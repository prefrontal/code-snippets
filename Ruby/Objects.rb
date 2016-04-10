# -- Ruby Objects ------------------------------------------------------------------

# Object parent classes

	objectName = "test"
	objectName.class
	
	objectName.superclass
	objectName.superclass.superclass
	
# Determine instance type

	x = 1
	x.instance_of? Fixnum		# true
	x.instance_of? Numeric		# false
	x.is_a? Fixnum				# true
	x.is_a? Integer				# true
	x.is_a? Numeric				# true
	x.is_a? Comparable			# true
	x.is_a? Object				# true
	
# Test if a method implements a method

	objectName.respond_to? :"<<"
	objectName.respond_to? :"createaverage"
	
# Test if two objects are the same object

	a = "Ruby"
	b = "Ruby"
	c = b
	
	a.equal?(b)		# false
	b.equal?(c)		# true
	
# Make an object immutable

	# Freezing an object makes it immutable
	# There is no way to thaw an Object
	# Must duplicate, not copy, the object
	
	s = "somestring"
	s.freeze
	s.frozen?			# true