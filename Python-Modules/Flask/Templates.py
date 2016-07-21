# -- Flask Templates ---------------------------------------------------------------------

# Modify your index view to return the HTML template instead of the normal text

	@app.route('/')
	def index():
		return render_template('index.html')