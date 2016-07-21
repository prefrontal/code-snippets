# -- Flask Routing -----------------------------------------------------------------------

# The route() decorator is used to bind a function to a URL. Here are some basic examples:

	@app.route('/')
	def index():
		return 'Index Page'

	@app.route('/hello')
	def hello():
		return 'Hello, World'
    
# To add variable parts to a URL you can mark these special sections as <variable_name>. 
# Such a part is then passed as a keyword argument to your function. Optionally a 
# converter can be used by specifying a rule with <converter:variable_name>. 

@app.route('/user/<username>')
def show_user_profile(username):
    # show the user profile for that user
    return 'User %s' % username

@app.route('/post/<int:post_id>')
def show_post(post_id):
    # show the post with the given id, the id is an integer
    return 'Post %d' % post_id
    
# The following converters exist:
# string	accepts any text without a slash (the default)
# int		accepts integers
# float		like int but for floating point values
# path		like the default but also accepts slashes
# any		matches one of the items provided
# uuid		accepts UUID strings