# PostgreSQL

__[PostgreSQL Official](https://www.postgresql.org/docs/)__

Query  | Function  
--- | ---  
`SELECT timeofday();`  | Print out the current time  
`CREATE TABLE ();` | Create Tables  
`COPY attributes FROM stdin USING DELIMETERS "\|";`  | Populate tables using "\|" as a delimeter  
`DROP TABLE tablename` | Drop table from schema  
`SELECT * FROM attr1, attr2, ... FROM relation1, relation2, ... WHERE [CONDITION]` | Select all (*) from attribute from relation where a condition  
__Example:__ `SELECT * FROM Movies` |  Displays all Movies
__Example:__ `SELECT * FROM Movies WHERE studioName = 'Disney' AND year = 1990` |  Displays all Disney movies where the release date is 1994  
__Example:__ `SELECT title, year FROM Movies`  | Display titles and years of all Movies  
__Aliasing Attributes:__ `SELECT title AS name, length AS duration FROM Movies;`  | Return the title and length of all movies as attributes name and duration

Command | Description
--- | ---
`ALTER ROLE username WITH PASSWORD ‘newpassword’;` or `/password` | Change the password  of your PostgreSQL account  
`CREATE SCHEMA myschema;` | Create schema named myschema  
`ALTER ROLE username SET SEARCH_PATH TO myschema;` | To set the default schema, you modify your search path  
`SHOW SEARCH_PATH;` | Verify your search path  
`DROP TABLE tablename;` | Get rid of table tablename  
`DELETE FROM tablename;` | Get rid of all tuples in tablename without deleting the table itself  
`DROP SCHEMA myschema CASCADE;` | Drop a schema myschema  
`\i myfile.sql` | Import the execution script myfile.sql  
`\! pwd` | Prints current working directory  
`\cd {{path name}}` | Change current working directory to {{path name}}  
`\dn` | Display all available schema  
`\d` | Display all relations (tables) in current schema
`\d {{table}}` | Display attributes of table  
`\q` | Exit psql  

## References  

**[Data Types](http://www.postgresqltutorial.com/postgresql-data-types/)**  
**[Pattern Matching](https://www.postgresql.org/docs/9.3/functions-matching.html)**