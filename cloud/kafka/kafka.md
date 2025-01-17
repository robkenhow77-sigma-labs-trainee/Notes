# Kafka

kafka is used for streaming data, this allows for realtime data analytics.

### How it works

Producers send messages to kafka, kafka handles the messages and sends them to consumers who subscribe (terminology not paid subscription) to kafka.

### Import 

The python package is called confluent_kafka, see docs [here](https://docs.confluent.io/platform/current/clients/confluent-kafka-python/html/index.html#)
The main methods are consumer and producer

```py
from confluent_kafka import Consumer, Producer
```

### Using kafka

