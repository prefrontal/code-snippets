# -- Flask Configuration -----------------------------------------------------------------

# The config.py file should contain one variable assignment per line. 
# When your app is initialized, the variables in config.py are used to configure 
# Flask and its extensions are accessible via the app.config dictionary

	DEBUG = True # Turns on debugging features in Flask
	BCRYPT_LEVEL = 12 # Configuration for the Flask-Bcrypt extension
	MAIL_FROM_EMAIL = "robert@example.com" # For use in application emails
	
# Configuration variables can be used by Flask, extensions or you. 
# Putting information in a configuration variable makes it easy to change in the future.
	
	# app.py or app/__init__.py
	from flask import Flask

	app = Flask(__name__)
	app.config.from_object('config')

	# Now we can access the configuration variables via app.config["VAR_NAME"].