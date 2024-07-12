# oracleaivector
Example code for Oracle AI Vector

Preparation of a docker container:
```
docker run -p 1521:1521 -e ORACLE_PASSWORD=password123 --name db23ai container-registry.oracle.com/database/free:latest
docker start db23ai

docker exec -it db23ai sqlplus sys/password123@freepdb1 as sysdba
```
Then create a user with CONNECT and RESSOURCE roles.
```
docker exec -it db23ai sqlplus abu/password123@freepdb1
```

Now execute createTab.sql to create a table with a vector datatype and loadTab.sql to insert some data.

