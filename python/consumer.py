from kafka import KafkaConsumer
from kafka import KafkaProducer
from datetime import datetime
import json
import dateutil
import pandas as pd
import time


consumer = KafkaConsumer('input',
                         bootstrap_servers=['192.168.56.104:9092'])
producer = KafkaProducer(bootstrap_servers=['192.168.56.104:9092'],api_version=(0,10,1))



for message in consumer:
    print(message.value , "input")
    
    producer.send('output',message.value)
    producer.flush()
    print("Message sent output ",message.value)

