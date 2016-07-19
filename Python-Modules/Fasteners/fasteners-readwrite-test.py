import random
import threading
import time

import fasteners

def read_something(ident, rw_lock):
    with rw_lock.read_lock():
        print("Thread %s is reading something" % ident)
        time.sleep(1)

def write_something(ident, rw_lock):
    with rw_lock.write_lock():
        print("Thread %s is writing something" % ident)
        time.sleep(1)

rw_lock = fasteners.ReaderWriterLock()
threads = []
for i in range(0, 100):
    is_writer = random.choice([True, False])
    if is_writer:
        threads.append(threading.Thread(target=write_something,
                                        args=(i, rw_lock)))
    else:
        threads.append(threading.Thread(target=read_something,
                                        args=(i, rw_lock)))

try:
    for t in threads:
        t.start()
finally:
    while threads:
        t = threads.pop()
        t.join()
