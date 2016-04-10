# -- Rails Applications ------------------------------------------------------------------

# Create new application

	rails new appName
	bundle install
	
# Start rails server

	bin/rails server
	
# Directory Layout

	app/		# Contains controllers, models, views, helpers, mailers, and assets
	bin/		# Contains rails scripts to setup, deploy, or run the application
	config/		# Application routs, database, and more
	db/			# The current database schema and migrations
	Gemfile		# Specify what gem dependencies are needed for the application
	lib/		# Extended modules for the application
	log/		# The application log files
	public/		# World viewable static files and compiled assets
	Rakefile	# Locates and loads tasks run from the command line
	test/		# Unit tests, fixtures, and test apparatus
	tmp/		# Temporary files
	vendor/		# Place for all third-party code, typically vendor gems
	