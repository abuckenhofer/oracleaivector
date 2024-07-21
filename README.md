# oracleaivector
Example code for Oracle AI Vector

Preparation of a docker container:
```
docker run -p 1521:1521 --name db23ai container-registry.oracle.com/database/free:latest

docker exec -it db23ai ./setPassword.sh password123

docker exec -it db23ai sqlplus sys/password123@freepdb1 as sysdba
```
Then create a new user with CONNECT and RESOURCE roles.
```
docker exec -it db23ai sqlplus newuser/password123@freepdb1
```

Now execute createTab.sql to create a table with a vector datatype and loadTab.sql to insert some data.

And afterwards play around with querying (e.g. query01.sql) and indexing (e.g. createIVFindex.sql, createHNSWindex.sql).

