# Relational Database

An rds is a relational database. It is good for smaller data sets. For very large datasets use a redshift database.

### Connect to using psql
[see docs](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToPostgreSQLInstance.html)
```
psql -h <host> -p <port> -U <username> -d <database>
```
- host = aws endpoint
- port = port, default for aws is 5432
- username = the aws username you created
- database = the name of the database as it is on psql. Not entering a database will let you see all the dbs in the rds