#!/usr/bin/python3

import mysql.connector
import time

db = mysql.connector.connect(host="localhost",database="python_temp",user="prefrontal",password="39639171")

if db.is_connected():
    print("Connected to db")

cursor = db.cursor()

add_reading = ("INSERT INTO temp_data (tdate, ttime, zone, temperature) VALUES (%s , %s, %s, %s)")
data_reading = (time.strftime("%d/%m/%Y"), time.strftime("%I:%M:%S"), 'kitchen', 98.6)

cursor.execute(add_reading, data_reading)

db.commit()
cursor.close()
db.close()
