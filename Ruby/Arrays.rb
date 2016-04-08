# -- Ruby Arrays ------------------------------------------------------------------

# Make a new array

	a = Array.new 
	b = []
	c = Array[]
	
# Get value for an index

	arr = [1, 3, 5, 7, 2]
	arr[0]      # 1
	arr[-1]     # 2
	arr[1..3]   # [3,5,7]
	
# Modify value for an index

	arr[0] = 42
	arr[0..2] = 99

# Push and pop off the end of the array

	my_arr.push(747)
	my_arr.pop
	
# Shift and unshift off the front of the array

	my_arr.unshift(999)
	my_arr.shift

# Just append a value to the end (similar to push)

	my_arr << 3

# Delete a value at an index

	my_arr.delete_at(1)
	
# Clear the whole array

	my_arr.clear

# Finding values in an array

	# Get the size of an array
	my_arr.size

	# Does an array contain a value at all
	my_arr.include?(3)
	
	# Find the biggest or smalles value in an array
	my_arr.max
	my_arr.min
	
	# Remove all duplicates from an array
	my_arr.uniq

# Array order operations

	# Shuffle the array randomly
	my_arr.shuffle

	# Sort the array
	my_arr.sort
	
	# Grab a random sample
	my_arr.sample
	
	# Get the first or last value
	my_arr.first
	my_arr.last
	
# Iterate over an array

	myArray.each do |x|
		puts "#{x}"
	end

	myArray.each {|x| puts "#{x}"}

	myArray.each_with_index {|x,index| puts "#{index}: #{x}"}
	
# Apply to all

	# Return a copy
	myArray.collect {|num| num**2}
	
	# Mutate original
	myArray.collect! {|num| num**2}