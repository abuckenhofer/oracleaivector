CREATE TABLE IF NOT EXISTS music (
   id INTEGER PRIMARY KEY,
   artistname VARCHAR2(250),
   songname VARCHAR2(250),
   songvector VECTOR(4) 
);
