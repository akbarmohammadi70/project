from kafka import KafkaProducer
from kafka.errors import KafkaError
from time import sleep
import json
from datetime import datetime , timezone

producer = KafkaProducer(bootstrap_servers=['192.168.56.104:9092'])

producer.send('input',b'Hello , Kafak')

i = 0
while(1):
 
    # message = format(str(datetime.utcnow().isoformat()))
    message = format(str(datetime.utcnow()))
    producer.send('input',json.dumps(message).encode('utf-8'))
    producer.flush()
    sleep(0.1)
    print("Message sent ",i,message)
    i+=1
