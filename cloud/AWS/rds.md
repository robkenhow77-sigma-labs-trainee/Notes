# Relational Database

### Connect to using psql
[see docs](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToPostgreSQLInstance.html)
```
psql -h <host> -p <port> -U <username> -d <database>
```
- host = aws endpoint
- port = port, default for aws is 5432
- username = the aws username you created
- database = the name of the database set up