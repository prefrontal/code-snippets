# -- Ruby Control Flow ------------------------------------------------------------------

# General

	# break will stop the current loop
	# next will jump to the next iteration
	# redo will let you restart the loop without evaluating the condition
	# retry is similar to redo but it will re-evaluate the condition

# If statements

	if somethingIstrue
		# Do some code if some_variable is a string
	else
		# This code will not run unless the variable is NOT a String
	end

# Unless statements

	unless somethingIstrue
		# Run this code unless the above statement is true
	end
	
# For Loops

	for number in (1..3)
		# Do something here
	end

	1.upto(200)
	200.downto(1)
