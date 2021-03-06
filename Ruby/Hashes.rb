# -- Ruby Hashes ------------------------------------------------------------------

# Make a new hash

	my_hash = Hash.new
	
	my_hash = {}
	
# Store keys/values

	favorite_colors = { "eyes" => "blue", "hair" => "blonde"}
	
# Get value for a key

	favorite_colors["eyes"]
	
# Change value for a key

	favorite_colors["eyes"] = "green"
	
# Add a new key/value pair

	favorite_colors["skin"] = "suburned"
	
# Delete a key/value pair

	favorite_smells[flower] = nil

	favorite_smells.delete(:cooking)

# Get all keys or all values

	favorite_colors.keys
	
	favorite_colors.values
	
# Iterate over a hash

	myHash.each do |keyVar,valueVar|
		puts "#{keyVar}: #{valueVar}"
	end

	myHash.each {|keyVar, valueVar| puts "#{keyVar}: #{valueVar}"}
	
# Iterate over keys and values

	myHash.each_key {#block_here}
	myHask.each_value {#block_here}
	

