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
`CREATE TABLE ();` | Create Tables<br>[Data Types](http://www.postgresqltutorial.com/postgresql-data-types/) 
`DROP TABLE tablename` | Drop table from schema  
`DELETE FROM tablename;` | Get rid of all tuples in tablename without deleting the table itself  
`ALTER TABLE tablename ADD attribute DATATYPE(#);` | Adds attribute 'attribute' with type DATATYPE(#) to the table 'tablename'  
`ALTER TABLE tablename DROP attribute;` | Drops attribute from tablename  
`COPY attributes FROM stdin USING DELIMETERS "\|";`  | Populate tables using "\|" as a delimeter
`PRIMARY KEY` | Can not be null, rows are uniquely identified by primary key value, can be at most one primary key for a table
`UNIQUE` |Rows can contain NULL unique values, rows with non-null unique values are uniquely identified by the unique values values, can have multiple unique constraints for a table, in addition to a primary key

## Queries  

Query  | Function  
--- | ---  
`--- comment` | One line comment  
`/* comment */` | Block comment
`SELECT timeofday();`  | Print out the current time  
`SELECT [DISTINCT] <list of attributes c1, c2,.., cm> AGGREGATEOP(...)`<br>`FROM R1, R2, ..., Rn`<br>`[WHERE condition]`<br>`[GROUP BY <list of grouping attributes>]`<br>`[HAVING condition]`<br>`ORDER BY <list of attributes [ASC\|DESC]>` | DISTINCT: remove duplicate rows from the result set; keeps one row for each group of duplicates
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
__Bag Union:__ R(A, B, C) and S(A, B, C)<br>`(SELECT * FROM R) UNION ALL (SELECT * FROM S);`  | Output of UNION has the same schema as R or S<br>Attributes/column names may be different; R’s are used<br>Output consists of the collection of all tuples from R and from S, including duplicate tuples
__Set Intersection, Bag Intersection:__ <br>`<Query1> INTERSECT <Query2>,  <Query1> INTERSECT ALL <Query2>` | Find all tuples that are in the results of both Query1 and Query2  
__Set Difference, Bag Difference:__ <br>`<Query1> EXCEPT <Query2>,  <Query1> EXCEPT ALL <Query2>`  | Find all tuples that are in the result of Query1, but not in the result of Query2  
__Subqueries:__ `SELECT...FROM... (SELECT...) WHERE... (SELECT...)`  | SELECT statement can be replaced with the table it creates and uses it as a variable in the main query
AND, OR, NOT | Logical connectives
IN, NOT IN<br>`x IN Q` | Subquery that returns a relation (true if x occurs in collection Q)
EXISTS, NOT EXISTS<br>`EXISTS Q` | Returns true if Q is a non-empty collection
`x op ANY Q` and `x op ALL Q` | x is a scalar expression; Q is a SQL query; comparison op is { <, <=, >, >=, <>, = }  
HAVING | Choose groups based on some aggregate property of the group; like a WHERE clause applied to groups  
`ANY, SOME, EVERY, ALL` |
`CREATE VIEW <view name> AS <view definition>` | Logical data independence, allows you to retrieve data if it matches the description in the view

## Database Modification Statements

Statement | Description 
--- | ---
`INSERT INTO R(A1,..,An)`<br>`VALUES(V1,..,Vn);` | A tuple v is inserted into the relation R, where attribute A = v and default values (perhaps NULL) are entered for all missing attributes  
`DELETE FROM R`<br>`WHERE <condition>;` | Delete rows with condition
`DELETE FROM R` | Without stating a WHERE clause, statement will delete all tuples from R
`UPDATE R`<br>`SET <new value assignments>`<br>`WHERE<condition>;` | Updates a rows with condition with new values

## Aggregate Operations

* NULLs are ignored in any aggregation
  * They do not contribute to the SUM, AVG, COUNT, MIN, MAX of an attribute. 

Query  | Function  
--- | ---  
`COUNT([DISTINCT] A)`  | Returns the number of [different] values in the A column
`SUM([DISTINCT] A)`  | Returns the sum of all [different] values in the A column
`AVG([DISTINCT] A)`  | Returns the average of all [different] values in the A column
`MAX(A)` / `MIN(A)`  | Returns maximum or minimum value in the A column

## Pattern Matching

If pattern does not contain percent signs or underscores, then the pattern only represents the string itself; in that case LIKE acts like the equals operator. An underscore (_) in pattern stands for (matches) any single character; a percent sign (%) matches any sequence of zero or more characters.

* '%'(stands for 0 or more arbitrary chars)
* '_'(stands for exactly one arbitrary char)

[Pattern Matching](https://www.postgresql.org/docs/9.3/functions-matching.html)

### s is a string, p is a pattern

>s LIKE p  
s NOT LIKE p

Example | Result
--- | ---
`attribute LIKE 'Hedgehog'` | String must be and contain 'Hedgehog in its entirety'
`attribute LIKE 'Z%'` | First letter must be Z, but any other letter may follow in the attribute column
`attribute LIKE '%l_'` | Anything may come before 'l', but it must be the second to last letter in the attribute column
`attribute LIKE '% %'` | 2 strings
`attribute LIKE '_a_'` | 'a' must be the letter between the first and last letter (i.e. cat, bat, fat...etc.)
`attribute LIKE '%ol%'` | Return any string in attribute column containing 'ol'
`attribute

## Transactions  

Atomicity: all or nothing  
Consistency  
Isolation  
Durability : permanently in database

Statement | Function  
--- | ---
`START TRANSACTION` or `Begin Transaction` | Marks beginning of transaction, followed by one or more SQL statements
`COMMIT` | Ends transaction. All changes to the database caused by the SQL statements within the transaction are committed and visible in the database
`ROLLBACK` | Causes the transaction to abort or terminate.  Any changes made by SQL statements within the transaction are undone
`SET TRANSCATION READ ONLY;` | Stated before transaction begins. Tells SQL system next transaction is read-only.
`SET TRANSACTION READ WRITE;` | Default option
`SET TRANSACTION READ WRITE ISOLATION LEVEL READ UNCOMMITTED;` | The transaction can run with isolation level "Read Uncommitted", allowing Dirty Reads
`SET TRANSACTION ISOLATION LEVEL READ COMMITTED;` | Only clean (committed) reads, no dirty reads.<br> note: might read data committed by different transactions
`SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;` | Repeated queries of a tuple during a transaction will retrieve the same value, even if its value was changed by another transaction
`SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;` |

__Isolation Levels:__
![Isolation Levels](isolationlevels.jpg)

## Order of Execution of a Query

1. FROM
2. WHERE
3. GROUP BY
4. AGG OP
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9. LIMIT

**[Order of Execution](https://sqlbolt.com/lesson/select_queries_order_of_execution)**  

## Meta Commands

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
`\d {{table}}` | Display attributes of table (columns)
`\q` | Exit psql  

![SQL's Three-Valued Logic: Truth Table](sqllogic.png)

### SQL Language

* Data Manipulation Language (DML)
  * Access and modify data
  * SELECT, INSERT, DELETE, UPDATE
* Data Definition Language (DDL)
  * Modify structure of data
  * CREATE, DROP, ALTER
* Data Control Language (DCL)
  * Control access to the data (security)
  * GRANT, REVOKE

## References  