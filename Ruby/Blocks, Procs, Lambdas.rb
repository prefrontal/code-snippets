# -- Ruby Blocks and Procs --------------------------------------------------------------

# Yield to block

	def block_test
		puts "Yielding to the block..."
		yield
		puts "Back in the method!"
	end
	
	block_test {puts ">>> We're in the block!"}
	
# Yield to block with parameters

	def yield_name (name)
		puts "Time to yield."
		yield (name)
		puts "Back in the method!"
	end
	
	yield_name("Eric") {|n| puts "My name is #{n}"}
	
# Define proc and pass to method

	cube = Proc.new {|x| x**3}
	
	[1,2,3].collect(&cube)
	
# Pass in method symbol as proc

	strings = ["1", "2", "3"]
	
	nums = strings.map(&:to_i)
	
# Define lambda

	# Lambdas check the number of arguments passed to it
	# Procs do not check the number of argumentsß

	lambda {puts "Hello!"}