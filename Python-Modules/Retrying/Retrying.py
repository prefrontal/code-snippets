# ---- Python Retrying Module ------------------------------------------------------------

# Examples from: https://pypi.python.org/pypi/retrying

# Retry forever

    @retry
    def never_give_up_never_surrender():
        print "Retry forever ignoring Exceptions, don't wait between retries"

# Retry finite

    @retry(stop_max_attempt_number=7)
    def stop_after_7_attempts():
        print "Stopping after 7 attempts"

# Retry max delay

    @retry(stop_max_delay=10000)
    def stop_after_10_s():
        print "Stopping after 10 seconds"
        
# Wait between retries

    @retry(wait_fixed=2000)
    def wait_2_s():
        print "Wait 2 second between retries"
        
# Exponential backoff

    @retry(wait_exponential_multiplier=1000, wait_exponential_max=10000)
    def wait_exponential_1000():
        print "Wait 2^x * 1000 milliseconds between each retry, up to 10 seconds, then 10 seconds afterwards"

# ----------------------------------------------------------------------------------------
