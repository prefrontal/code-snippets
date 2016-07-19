import time
import fasteners

LOCK_FILE = "./monitor_queue_lock"

@fasteners.interprocess_locked(LOCK_FILE)
def read_something(ident):
    print("Reading something: {}".format(i))
    time.sleep(2)

@fasteners.interprocess_locked(LOCK_FILE)
def write_something(ident):
    print("Writing something: {}".format(i))
    time.sleep(2)

for i in range(1000):
    read_something(i)
    time.sleep(0.1)
    write_something(i)
    time.sleep(0.1)


# LOCK_FILE = "./monitor_queue_lock"
# MY_LOCK = fasteners.InterProcessLock(LOCK_FILE)

# #@fasteners.interprocess_locked('./tmp_lock_file')
# def read_something(ident):
#     gotten = MY_LOCK.acquire(blocking=True)
#     print("Reading something: {}".format(i))
#     time.sleep(2)
#     MY_LOCK.release()

# #@fasteners.interprocess_locked('./tmp_lock_file')
# def write_something(ident):
#     gotten = MY_LOCK.acquire(blocking=True)
#     print("Writing something: {}".format(i))
#     time.sleep(2)
#     MY_LOCK.release()

# for i in range(1000):
#     read_something(i)
#     time.sleep(0.1)
#     write_something(i)
#     time.sleep(0.1)