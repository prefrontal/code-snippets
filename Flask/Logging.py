# -- Flask Logging -----------------------------------------------------------------------

# As of Flask 0.3 a logger is preconfigured for you to use.
# Here are some example log calls:

app.logger.debug('A value for debugging')
app.logger.warning('A warning occurred (%d apples)', 42)
app.logger.error('An error occurred')