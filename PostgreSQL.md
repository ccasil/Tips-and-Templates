# PostgreSQL

__[PostgreSQL Official](https://www.postgresql.org/docs/)__

## Schema

Query  | Function  
--- | ---  
`CREATE SCHEMA myschema;` | Create schema named myschema  
`ALTER ROLE username SET SEARCH_PATH TO myschema;` | To set the default schema, you modify your search path  
`SHOW SEARCH_PATH;` | Verify your search path  
`DROP SCHEMA myschema CASCADE;` | Drop a schema myschema  

## Tables  

Query  | Function  
--- | ---  
`CREATE TABLE ();` | Create Tables  
`DROP TABLE tablename` | Drop table from schema  
`DELETE FROM tablename;` | Get rid of all tuples in tablename without deleting the table itself  
`ALTER TABLE tablename ADD attribute DATATYPE(#);` | Adds attribute 'attribute' with type DATATYPE(#) to the table 'tablename'  
`ALTER TABLE tablename DROP attribute;` | Drops attribute from tablename  
`COPY attributes FROM stdin USING DELIMETERS "\|";`  | Populate tables using "\|" as a delimeter  

## Queries  

Query  | Function  
--- | ---  
`--- comment` | One line comment  
`/* comment */` | Block comment
`SELECT timeofday();`  | Print out the current time  
`SELECT [DISTINCT] <list of attributes> FROM R1, R2, ..., Rn WHERE [condition] ORDER BY <list of attributes [ASC\|DESC]>` | Presents result in sorted order default is ascending  
`SELECT * FROM attr1, attr2, ... FROM relation1, relation2, ... WHERE [CONDITION]` | Select all (*) from attribute from relation where a condition  
__Example:__ `SELECT * FROM Movies` |  Displays all Movies
__Example:__ `SELECT * FROM Movies WHERE studioName = 'Disney' AND year = 1990 ORDER BY length, title;` |  Displays all Disney movies where the release date is 1990 ordered by ascending length, then by ascending title  
__Example:__ `SELECT title, year FROM Movies`  | Display titles and years of all Movies  
__Tuple Variable Binding:__ <br>`Select * From Movies, StarsIn WHERE movietitle = title` OR<br>`SELECT * FROM Movies m, StarsIn s WHERE m.title = s.title`| m binds to a tuple (row) in the Movies relation<br>s binds to a tuple (row) in StarsIn relation
__Aliasing Attributes:__ `SELECT title AS name, length AS duration FROM Movies;`  | Return the title and length of all movies as attributes name and duration  
__JOIN..ON..:__ R(A, B, C) and S(C, D, E)<br>`R JOIN S ON R.B=S.D AND R.A=S.E;` OR<br>`SELECT * FROM R, S WHERE R.B=S.D AND R.A=S.E`; | Selects only tuples from R and S where R.B=S.D and R.A=S.E<br>(R.A, R.B, R.C, S.C, S.D, S.E);  
__CROSS JOIN:__ R(A, B, C) and S(C, D, E)<br>`R CROSS JOIN S;` OR<br>`SELECT *FROM R, S;` | Product of the two relations R and S<br>(R.A, R.B, R.C, S.C, S.D, S.E);  
__NATURAL JOIN:__ R(A, B, C) and S(C, D, E)<br>`R NATURAL JOIN S;` OR<br>`SELECT R.A, R.B, R.C, S.D, S.E FROM R, S WHERE R.C = S.C;`  | (A, B, C, D, E)  
__Set Union:__ R(A, B, C) and S(A, B, C)<br>`(SELECT * FROM R) UNION (SELECT * FROM S);` | Output of UNION has the same schema as R or S<br>"UNION DISTICT"  
__Bag Union:__ R(A, B, C) and S(A, B, C)<br>`(SELECT * FROM R) UNION ALL (SELECT * FROM S);`  | Output of UNION has the same schema as R or S<br>Attributes/column names may be different; R’s are used  
__Set Intersection, Bag Intersection:__ <br>`<Query1> INTERSECT <Query2>,  <Query1> INTERSECT ALL <Query2>` | Find all tuples that are in the results of both Query1 and Query2  
__Set Difference, Bag Difference:__ <br>`<Query1> EXCEPT <Query2>,  <Query1> EXCEPT ALL <Query2>`  | Find all tuples that are in the result of Query1, but not in the result of Query2  
__Subqueries:__ `SELECT...FROM... (SELECT...) WHERE... (SELECT...)`  | SELECT statement can be replaced with the table it creates and uses it as a variable in the main query
IN, NOT IN<br>`x IN Q` | Subquery that returns a relation (true if x occurs in collection Q)
EXISTS, NOT EXISTS<br>`EXISTS Q` | Returns true if Q is a non-empty collection
`x op ANY Q` and `x op ALL Q` | x is a scalar expression; Q is a SQL query; op is { <, <=, >, >=, <>, = }

## Aggregates

Query  | Function  
--- | ---  
`COUNT([DISTINCT] A)`  | Returns the number of [different] values in the A column  
`SUM([DISTINCT] A)`  | Returns the sum of all [different] values in the A column  
`AVG([DISTINCT] A)`  | Returns the average of all [different] values in the A column  
`MAX(A)` / `MIN(A)`  | Returns maximum or minimum value in the A column    


## Environment Commands

Command | Description
--- | ---
`ALTER ROLE username WITH PASSWORD ‘newpassword’;` or `/password` | Change the password  of your PostgreSQL account  
`\i myfile.sql` | Import the execution script myfile.sql  
`\! pwd` | Prints current working directory  
`\! ls` | Lists all files in the current working directory  
`\cd {{path name}}` | Change current working directory to {{path name}}  
`\l` | List all databases  
`\dn` | Display all available schema  
`\d` | Display all relations (tables) in current schema
`\d {{table}}` | Display attributes of table  
`\q` | Exit psql  

![SQL's Three-Valued Logic: Truth Table](sqllogic.png)

## References  

**[Data Types](http://www.postgresqltutorial.com/postgresql-data-types/)**  
**[Pattern Matching](https://www.postgresql.org/docs/9.3/functions-matching.html)**