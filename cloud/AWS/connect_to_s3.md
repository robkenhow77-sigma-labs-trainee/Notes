# Connecting to Amazon s3

Always use ENV variables to protect sensitive information, this includes:
- access key
- secret access key
- bucket names

Essentially anything that is unique to your s3 account.
The module used to connect to s3 is boto3. This is an amazon SDK for interacting with s3.\
The first thing to do is make a client object.
```py
from boto3 import client
```
# Input access keys using ENV variables
's3' indicates which service you want to use.
```py
s3 = client('s3', aws_access_key_id="###", aws_secret_access_key = "###")
s3 uses buckets to store data. A bucket is like a folder. To see all the buckets, use list_buckets(). This will return a dictionary of all the buckets and their data.
```
Use ```.keys()``` to help understand the dictionary.

To get the names of all the buckets use:
```py
for bucket in s3.list_buckets()["Buckets"]:\
    print(bucket["Name"])
```
# To view what is in the bucket, use:
```py
objs = s3.list_objects(Bucket="bucket_name")
print(objs)
```
This will tell you everything in the bucket. 

# To view the files in bucket run:
```py
for obj in objs["Contents"]:  # --> gets the contents of each bucket
    print(obj)
```
```obj["Contents"]["Key"]``` will give you the filename.
# Make sure you look at the documentation!