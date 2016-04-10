# -- Rails Controllers ------------------------------------------------------------------

# Create a new controller

	# To create a new controller, you will need to run the "controller"  
	# generator and tell it you want a controller called "welcome" with 
	# an action called "index", just like this:

	rails generate controller welcome index
	
	
# Standard controller actions

	HTTP Verb	Path				 Controller#Action	 Used For
	---------	------------------   -----------------   ------------------------
	GET			/messages			 messages#index		 List all messages
	GET			/messages/new		 messages#new		 Return new message form
	POST		/messages			 messages#create	 New message
	GET			/messages/:id		 messages#show		 Display a message
	GET			/messages/:id/edit	 messages#edit		 Return message edit form
	PATCH/PUT	/messages/:id		 messages#update	 Update a message
	DELETE		/messages/:id		 messages#destroy	 Delete a message