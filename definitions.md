# Best Practices, Acronyms and Definitions

### Databases
- ACID: ACID stands for Atomicity, Consistency, Isolation, and Durability.  Atomicity, the transaction either succeeds or fails completely, no half completions. Consistency, guarantees the transaction will take the database from one state to the other ensuring all constraints are met. Isolation, ensures concurrent transactions don't interfere with one another. Durability, guarantees once a transaction has been committed it will stay committed even in the event of a system failure.
- SQL Flavours: SQL is a programming language. Flavours are variations of the language, such as postgres, MySQL, SQLite. Each offer slightly different functionality.
- 3NF: 3rd normal form. This is the baseline standard for database schema design. It ensures no data is duplicated, data anomalies are avoided and ensures referential integrity (primary key relations).
- DDL: Data Definition Language, used for defining database structure and set up, such as writing a schema and dropping rows/columns.
- DML: Data Manipulation Language, used for editing pieces of data such as changing actual values (inserting and updating).
- relational database: stores data in tables or "relations", with predefined relationships between tables.
- NoSQL: example, MongoDB. Data is stored in an unstructured way.
- schema: a blueprint for a database

### APIs
- API: application programming interface. It allows device to communicate with one another, wether that be a computer to a database or two computers, or two databases. You send a request to an API and it gives you a response.
- REST: Representational State Transfer. REST is a software architectural style for APIs. SOme of the main principles of rest are: Uniform interface, a consistent and predictable way of interacting with it; statelessness, each request is dealt with independently from the previous ones; layered system, the client can connect to other intermediaries such as other servers but the intermediaries remain invisible to the client; cacheability, information can be cached on the client or an intermediary server to improve response time; code on demand, code can be sent from the server to the client in order to enhance client functionality.
- SSH: Secure shell, used for encrypting data between two computers.
- HTTP: Hypertext transfer Protocol, used for transmitting hypertext.
- get: request information from a server 
- post: send information to a server
- other requests: head, just gets the response not the content; delete, remove the data; put, completely replace the data; patch, replace a specific part of the data not the entire thing.
- sending data: transactional, 'hand shake' you connect, then send data; one-way, data is sent without a response.


### Data Pipeline
- CD/CI: continuous integration (CI) and continuous delivery (CD).
- DevOps


### Other
- CLI: command line interface
- Nohup &
- Agile

