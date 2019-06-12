# PostgreSQL

__[PostgreSQL Official](https://www.postgresql.org/docs/)__

## Schema

| Query                                              | Function                                               |
| -------------------------------------------------- | ------------------------------------------------------ |
| `CREATE SCHEMA myschema;`                          | Create schema named myschema                           |
| `ALTER ROLE username SET SEARCH_PATH TO myschema;` | To set the default schema, you modify your search path |
| `SHOW SEARCH_PATH;`                                | Verify your search path                                |
| `DROP SCHEMA myschema CASCADE;`                    | Drop a schema myschema                                 |

## Tables  

| Query                                               | Function                                                                                                                                                                                                  |
| --------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `CREATE TABLE ();`                                  | Create Tables<br>[Data Types](http://www.postgresqltutorial.com/postgresql-data-types/)                                                                                                                   |
| `DROP TABLE tablename`                              | Drop table from schema                                                                                                                                                                                    |
| `DELETE FROM tablename;`                            | Get rid of all tuples in tablename without deleting the table itself                                                                                                                                      |
| `ALTER TABLE tablename ADD attribute DATATYPE(#);`  | Adds attribute 'attribute' with type DATATYPE(#) to the table 'tablename'                                                                                                                                 |
| `ALTER TABLE tablename DROP attribute;`             | Drops attribute from tablename                                                                                                                                                                            |
| `COPY attributes FROM stdin USING DELIMETERS "\|";` | Populate tables using "\|" as a delimeter                                                                                                                                                                 |
| `PRIMARY KEY`                                       | Can not be null, rows are uniquely identified by primary key value, can be at most one primary key for a table                                                                                            |
| `UNIQUE`                                            | Rows can contain NULL unique values, rows with non-null unique values are uniquely identified by the unique values values, can have multiple unique constraints for a table, in addition to a primary key |

## Queries  

| Query                                                                                                                                                                                                                                         | Function                                                                                                                                                                                                  |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `--- comment`                                                                                                                                                                                                                                 | One line comment                                                                                                                                                                                          |
| `/* comment */`                                                                                                                                                                                                                               | Block comment                                                                                                                                                                                             |
| `SELECT timeofday();`                                                                                                                                                                                                                         | Print out the current time                                                                                                                                                                                |
| `SELECT [DISTINCT] <list of attributes c1, c2,.., cm> AGGREGATEOP(...)`<br>`FROM R1, R2, ..., Rn`<br>`[WHERE condition]`<br>`[GROUP BY <list of grouping attributes>]`<br>`[HAVING condition]`<br>`ORDER BY <list of attributes [ASC\|DESC]>` | DISTINCT: remove duplicate rows from the result set; keeps one row for each group of duplicates                                                                                                           |
| `SELECT * FROM attr1, attr2, ... FROM relation1, relation2, ... WHERE [CONDITION]`                                                                                                                                                            | Select all (*) from attribute from relation where a condition                                                                                                                                             |
| __Example:__ `SELECT * FROM Movies`                                                                                                                                                                                                           | Displays all Movies                                                                                                                                                                                       |
| __Example:__ `SELECT * FROM Movies WHERE studioName = 'Disney' AND year = 1990 ORDER BY length, title;`                                                                                                                                       | Displays all Disney movies where the release date is 1990 ordered by ascending length, then by ascending title                                                                                            |
| __Example:__ `SELECT title, year FROM Movies`                                                                                                                                                                                                 | Display titles and years of all Movies                                                                                                                                                                    |
| __Tuple Variable Binding:__ <br>`Select * From Movies, StarsIn WHERE movietitle = title` OR<br>`SELECT * FROM Movies m, StarsIn s WHERE m.title = s.title`                                                                                    | m binds to a tuple (row) in the Movies relation<br>s binds to a tuple (row) in StarsIn relation                                                                                                           |
| __Aliasing Attributes:__ `SELECT title AS name, length AS duration FROM Movies;`                                                                                                                                                              | Return the title and length of all movies as attributes name and duration                                                                                                                                 |
| __JOIN..ON..:__ R(A, B, C) and S(C, D, E)<br>`R JOIN S ON R.B=S.D AND R.A=S.E;` OR<br>`SELECT * FROM R, S WHERE R.B=S.D AND R.A=S.E`;                                                                                                         | Selects only tuples from R and S where R.B=S.D and R.A=S.E<br>(R.A, R.B, R.C, S.C, S.D, S.E);                                                                                                             |
| __CROSS JOIN:__ R(A, B, C) and S(C, D, E)<br>`R CROSS JOIN S;` OR<br>`SELECT *FROM R, S;`                                                                                                                                                     | Product of the two relations R and S<br>(R.A, R.B, R.C, S.C, S.D, S.E);                                                                                                                                   |
| __NATURAL JOIN:__ R(A, B, C) and S(C, D, E)<br>`R NATURAL JOIN S;` OR<br>`SELECT R.A, R.B, R.C, S.D, S.E FROM R, S WHERE R.C = S.C;`                                                                                                          | (A, B, C, D, E)                                                                                                                                                                                           |
| __Set Union:__ R(A, B, C) and S(A, B, C)<br>`(SELECT * FROM R) UNION (SELECT * FROM S);`                                                                                                                                                      | Output of UNION has the same schema as R or S<br>"UNION DISTICT"                                                                                                                                          |
| __Bag Union:__ R(A, B, C) and S(A, B, C)<br>`(SELECT * FROM R) UNION ALL (SELECT * FROM S);`                                                                                                                                                  | Output of UNION has the same schema as R or S<br>Attributes/column names may be different; R’s are used<br>Output consists of the collection of all tuples from R and from S, including duplicate tuples<br>The `UNION ALL` command is equal to the `UNION` command, except that `UNION ALL` selects all values, therefore if there is only one tuple in T1 and T2 it is possible for them to return the same amount however `UNION ALL` will return more tuples otherwise |
| __Set Intersection, Bag Intersection:__ <br>`<Query1> INTERSECT <Query2>,  <Query1> INTERSECT ALL <Query2>`                                                                                                                                   | Find all tuples that are in the results of both Query1 and Query2                                                                                                                                         |
| __Set Difference, Bag Difference:__ <br>`<Query1> EXCEPT <Query2>,  <Query1> EXCEPT ALL <Query2>`                                                                                                                                             | Find all tuples that are in the result of Query1, but not in the result of Query2                                                                                                                         |
| __Subqueries:__ `SELECT...FROM... (SELECT...) WHERE... (SELECT...)`                                                                                                                                                                           | SELECT statement can be replaced with the table it creates and uses it as a variable in the main query                                                                                                    |
| AND, OR, NOT                                                                                                                                                                                                                                  | Logical connectives                                                                                                                                                                                       |
| IN, NOT IN<br>`x IN Q`                                                                                                                                                                                                                        | Subquery that returns a relation (true if x occurs in collection Q)                                                                                                                                       |
| EXISTS, NOT EXISTS<br>`EXISTS Q`                                                                                                                                                                                                              | Returns true if Q is a non-empty collection                                                                                                                                                               |
| `x op ANY Q` and `x op ALL Q`                                                                                                                                                                                                                 | x is a scalar expression; Q is a SQL query; comparison op is { <, <=, >, >=, <>, = }                                                                                                                      |
| HAVING                                                                                                                                                                                                                                        | Choose groups based on some aggregate property of the group; like a WHERE clause applied to groups                                                                                                        |
| `ANY, SOME, EVERY, ALL`                                                                                                                                                                                                                       |
| `CREATE VIEW <view name> AS <view definition>`                                                                                                                                                                                                | Logical data independence, allows you to retrieve data if it matches the description in the view                                                                                                          |
| `CREATE INDEX indexname ON tablename(attribute)`                                                                                                                                                                                              | Create index named indexname On the table tablename's column 'attribute'                                                                                                                                  |
| `DROP INDEX indexname`                                                                                                                                                                                                                        | Drop index named indexname                                                                                                                                                                                |
| `ALTER TABLE tablename ALTER COLUMN attribute SET NOT NULL` OR<br>`ALTER TABLE tablename ALTER COLUMN attribute DROP NOT NULL`                                                                                                                | If the CREATE statement didn't include NOT NULL for price                                                                                                                                                 |
| `FOREIGN KEY (<list of attributes>)`<br>`REFERENCES <relation> (<attributes>)`                                                                                                                                                                | Use keyword REFERENCES as an element of the schema, or after an attribute<br>note: referenced attributes must be declared as either PRIMARY KEY or UNIQUE                                                 |
| `ON [UPDATE, DELETE][SET NULL, CASCADE]`                                                                                                                                                                                                      | Foreign-key declaration                                                                                                                                                                                   |
| `CHECK (<condition>)`                                                                                                                                                                                                                         | Condition must evaluate to TRUE or UNKNOWN; can't be FALSE                                                                                                                                                |
| `CREATE ASSERTION <name> CHECK (<condition>)`                                                                                                                                                                                                 | Database-schema elements, like relations or views<br>Condition may refer to any relation or attribute in the database schema                                                                              |

## Outer Joins

`R OUTER JOIN S` is the core part of an Outer Join expression

It can be modified by:

1. Optional `ON <condition>` after `JOIN`
2. Optional `LEFT`, `RIGHT`, or `FULL` before `OUTER`
   * `LEFT` means pad dangling tuples of `R` only
   * `RIGHT` means pad dangling tuples of `S` only
   * `FULL` means pad both; this choice is the default
     * `OUTER JOIN` means `FULL OUTER JOIN`

## Embedded SQL

| Statement                                                                                          | Description                                                                           |
| -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `EXEC SQL BEGIN DECLARE SECTION;`<br>`<host-language declarations>`<br>`EXEC SQL END DECLARATION;` | To connect SQL and the host-language program, the two parts must share some variables |

## Persistent Stored Modules (PSM) Statements

| Statement                                                                                                        | Description                                                                                                                                                  |
| ---------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `CREATE PROCEDURE <name>(`<br>`<parameter list>) RETURNS <type>`<br>`<optional local declarations>`<br>`<body>;` | Basic Persistent Stored Modules (PSM) form                                                                                                                   |
| `DECLARE c CURSOR FOR <query>`                                                                                   | Declare a cursor c                                                                                                                                           |
| `OPEN c`<br>`CLOSE c`                                                                                            | To use c, we first open the cursor c. The query of c is evaluated, and c is set to point to the first tuple of the result. When finished with c, we close it |
| `FETCH FROM c INTO x1, x2, ...,xn`                                                                               | To get the next tuple from cursor c. x = list of variables, one for each component of the tuples referred to by c                                            |
| `RETURN <expression>`                                                                                            | sets the return value of a function                                                                                                                          |
| `DECLARE <name> <type>`                                                                                          | used to declare local variables                                                                                                                              |
| `BEGIN . . . END`                                                                                                | for groups of statements                                                                                                                                     |
| `SET <variable> = <expression>;`                                                                                 | assignment                                                                                                                                                   |

## Dynamic SQL

* Specific queries and modification statements to interact with the database

| Query                                                          | Description                                                                                           |
| -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `EXEC SQL PREPARE <query-name>`<br>`FROM <text of the query>;` | Preparing a Query, (note: prepare means optimize)                                                     |
| `EXEC SQL EXECUTE <query-name>;`                               | Executing a query. "Prepare once, Execute many times"                                                 |
| `EXEC SQL EXECUTE IMMEDIATE <text>;`                           | If we are only going to execute the query once, we can combine the PREPARE and EXECUTE steps into one |

## Cursor

* Cursor: A tuple-variable that ranges over all tuples in the result of some query
* If c is a cursor, you may use `...WHERE CURRENT OF c`, just as in Stored Procedures

| Statement                                               | Description                                                                                                 |
| ------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `EXEC SQL DECLARE c CURSOR FOR <query>;`                | Declare a cursor c                                                                                          |
| `EXEC SQL OPEN CURSOR c;`<br>`EXEC SQL CLOSE CURSOR c;` | Open and close cursor                                                                                       |
| `EXEC SQL FETCH c INTO <variable(s)>;`                  | Fetch from c<br>You can write a macro NOT_FOUND that is true if and only if the FETCH fails to find a tuple |

![IF Statments](./assets/sqlifstatements.png)
![Loops 1](./assets/sqlloops1.png)
![Loops 2](./assets/sqlloops2.png)
![CursorLoop](./assets/sqlcursorloop.png)

## Java Database Connectivity (JDBC)

| Statement                                                                                                                     | Description                                                                                                                                                                                                                                    |
| ----------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `import java.sql.*;`<br>`Class.forName(com.mysql.jdbc.Driver);`<br>`Connection myCon=`<br>`DriverManager.getConnection(...);` | Making a Connection(note: (...) = URL of the database. your name and password go here)                                                                                                                                                         |
| `Statement stat1 = myCon.createStatement();`                                                                                  | Statement is an object that can accept a string that is a SQL statement and can execute such a string                                                                                                                                          |
| `PreparedStatementstat2 =`<br>`myCon.prepareStatement(`<br>`"SELECT beer, price FROM Sells "+"WHERE bar = 'Joe''s Bar'");`    | PreparedStatement is an object that has an associated SQL statement ready to execute                                                                                                                                                           |
| `executeQuery`<br>`executeUpdate`                                                                                             | For Statement: one argument: the query or modification to be executed<br>For PreparedStatement: no argument                                                                                                                                    |
| `executeQuery()`                                                                                                              | Executes a SQL SELECT statement, and returns a ResultSetobject                                                                                                                                                                                 |
| `executeUpdate()`                                                                                                             | Executes a SQL UPDATE, INSERT or DELETE statement, and returns the number of affected rows                                                                                                                                                     |
| `execute()`                                                                                                                   | Executes either query or modification, and returns TRUE if query and FALSE if modification<br>`stat.getResultSet` for query result<br>`stat.getUpdateCount` for modification                                                                   |
| `next()`                                                                                                                      | Method next()advances the 'cursor' to the next tuple<br>The first time next() is applied, it gets the first tuple<br>If there are no more tuples, next()returns the value false                                                                |
| `getX(i)`                                                                                                                     | When a ResultSet refers to a tuple, we can get the components of that tuple by applying certain methods to the ResultSet. Where X is some type, and i is the component number, returns the value of that component. The value must have type X |

## Database Modification Statements

| Statement                                                          | Description                                                                                                                               |
| ------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| `INSERT INTO R(A1,..,An)`<br>`VALUES(V1,..,Vn);`                   | A tuple v is inserted into the relation R, where attribute A = v and default values (perhaps NULL) are entered for all missing attributes |
| `DELETE FROM R`<br>`WHERE <condition>;`                            | Delete rows with condition                                                                                                                |
| `DELETE FROM R`                                                    | Without stating a WHERE clause, statement will delete all tuples from R                                                                   |
| `UPDATE R`<br>`SET <new value assignments>`<br>`WHERE<condition>;` | Updates a rows with condition with new values                                                                                             |

## Aggregate Operations

* NULLs are ignored in any aggregation
  * They do not contribute to the SUM, AVG, COUNT, MIN, MAX of an attribute.

| Query                 | Function                                                      |
| --------------------- | ------------------------------------------------------------- |
| `COUNT([DISTINCT] A)` | Returns the number of [different] values in the A column      |
| `SUM([DISTINCT] A)`   | Returns the sum of all [different] values in the A column     |
| `AVG([DISTINCT] A)`   | Returns the average of all [different] values in the A column |
| `MAX(A)` / `MIN(A)`   | Returns maximum or minimum value in the A column              |

## Pattern Matching

If pattern does not contain percent signs or underscores, then the pattern only represents the string itself; in that case LIKE acts like the equals operator. An underscore (_) in pattern stands for (matches) any single character; a percent sign (%) matches any sequence of zero or more characters.

* '%'(stands for 0 or more arbitrary chars)
* '_'(stands for exactly one arbitrary char)

[Pattern Matching](https://www.postgresql.org/docs/9.3/functions-matching.html)

### s is a string, p is a pattern

> s LIKE p  
> s NOT LIKE p

| Example                     | Result                                                                                         |
| --------------------------- | ---------------------------------------------------------------------------------------------- |
| `attribute LIKE 'Hedgehog'` | String must be and contain 'Hedgehog in its entirety'                                          |
| `attribute LIKE 'Z%'`       | First letter must be Z, but any other letter may follow in the attribute column                |
| `attribute LIKE '%l_'`      | Anything may come before 'l', but it must be the second to last letter in the attribute column |
| `attribute LIKE '% %'`      | 2 strings                                                                                      |
| `attribute LIKE '_a_'`      | 'a' must be the letter between the first and last letter (i.e. cat, bat, fat...etc.)           |
| `attribute LIKE '%ol%'`     | Return any string in attribute column containing 'ol'                                          |

## Transactions  

### ACID

* __A__ tomicity guarantees that each transaction is treated as a single "unit", which either succeeds completely, or fails completely: if any of the statements constituting a transaction fails to complete, the entire transaction fails and the database is left unchanged. "All or nothing"  
* __C__ onsistency ensures that a transaction can only bring the database from one valid state to another, maintaining database invariants: any data written to the database must be valid according to all defined rules, including constraints, cascades, triggers, and any combination thereof
* __I__ solation ensures that concurrent execution of transactions leaves the database in the same state that would have been obtained if the transactions were executed sequentially
* __D__ urability guarantees that once a transaction has been committed, it will remain committed even in the case of a system failure

| Statement                                                      | Function                                                                                                                                    |
| -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `START TRANSACTION` or `Begin Transaction`                     | Marks beginning of transaction, followed by one or more SQL statements                                                                      |
| `COMMIT`                                                       | Ends transaction. All changes to the database caused by the SQL statements within the transaction are committed and visible in the database |
| `ROLLBACK`                                                     | Causes the transaction to abort or terminate.  Any changes made by SQL statements within the transaction are undone                         |
| `SET TRANSCATION READ ONLY;`                                   | Stated before transaction begins. Tells SQL system next transaction is read-only.                                                           |
| `SET TRANSACTION READ WRITE;`                                  | Default option                                                                                                                              |
| `SET TRANSACTION READ WRITE ISOLATION LEVEL READ UNCOMMITTED;` | The transaction can run with isolation level "Read Uncommitted", allowing Dirty Reads                                                       |
| `SET TRANSACTION ISOLATION LEVEL READ COMMITTED;`              | Only clean (committed) reads, no dirty reads.<br> note: might read data committed by different transactions                                 |
| `SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;`             | Repeated queries of a tuple during a transaction will retrieve the same value, even if its value was changed by another transaction         |
| `SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;`                |

__Isolation Levels:__
![Isolation Levels](./assets/isolationlevels.jpg)

* Dirty Data:  data that is written by a transaction but has not
yet been committed by the transaction
* Dirty Reads: the read of dirty data written by another
transaction
* Repeatable reads:  Repeated queries of a tuple during a
transaction will retrieve the same value, even if its value was
changed by another transaction
* Phantoms: tuples newly inserted while the transaction is
running

## Relation Algebra Operators

| Operation                                                                                                      | Name             | Function                                                                                                                                                                                                                                |
| -------------------------------------------------------------------------------------------------------------- | ---------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| σ<br>`σ`<sub>`condition`</sub>`(R)`                                                                            | Selection        | Takes a relation R and extracts only the rows from R that satisfy the condition                                                                                                                                                         |
| π<br>`π`<sub>`<attribute list>`</sub>`(R)`                                                                     | Projection       | For every tuple in relation R, output only the attributes appearing in attribute list<br>May be duplicates; for Codd’s Relational Algebra, duplicates are always eliminated                                                            |
| ⋃<br>`R⋃S`                                                                                                     | Set Union        | The output consists of the setof all tuples in either R or S (or both)                                                                                                                                                                  |
| \-<br>`R-S`                                                                                                    | Set-Difference   | Output consists of all tuples in R but not in S                                                                                                                                                                                         |
| x<br>`RxS={(a1,...,am,b1,...,bn)`\|`(a1,...,am)∈R and (b1, ..., bn)∈S)}`                                          | Cross-Product    | Relation of arity m + n                                                                                                                                                                                                                 |
| ⋂<br>`R⋂S`                                                                                                     | Set Intersection | `R⋂S = R-(R-S) = S-(S-R)`                                                                                                                                                                                                               |
| ρ<br>`ρ`<sub>`s(A1,...,An)`</sub>`(R)`                                                                         | Renaming         | Rename relation R to S with attributes A1, ..., An                                                                                                                                                                                      |
| ⋈<br>`R⋈S=π`<sub>`(attr(R)⋃attr(S))`</sub>`(σ`<sub>`R.A1=S.A1 AND R.A2=S.A2 AND...AND R.Ak=SA.k`</sub>`(RxS))` | Natural Join     | 1. Compute RxS<br>2. Keep only those tuples in RxS satisfying: `R.A1=S.A1 AND R.A2=S.A2 AND...AND R.Ak=SA.k`<br>3. Output is projection on the set of attributes in R U S (without repeats of the attributes that appear in both)       |
| ⋈<sub>⊝</sub><br>`R⋈`<sub>`⊝`</sub>`S`<br>`σ`<sub>`⊝`</sub>`(R x S)`                                           | Theta-Join       | The θ-Join outputs those tuples from R x S that satisfy the condition θ. Compute R x S, then keep only those tuples in R x S that satisfy θ<br>If ⊝ always evaluates to TRUE, then `R⋈`<sub>`⊝`</sub>`S = σ`<sub>`⊝`</sub>`(RxS) = RxS` |
| ⋉<br>`R⋉S`                                                                                                     | Semi Join        | 1. Compute Natural Join of R and S<br>2. Output the projection of that on just the attributes of R                                                                                                                                      |
| / or ÷<br>`R/S = π`<sub>`A1...Am`</sub>`(R) - π`<sub>`A1...Am`</sub>`((π`<sub>`A1...Am`</sub>`(R)xS)-R)`       | Division         | Input: Two Relations R and S, where both:<br> * attr(S) ⊂ attr(R)<br> * attr(S) is non-empty<br>Output:  Relation whose attributes are in attr(R) –attr(S)                                                                              |

![Cross Product 1](./assets/crossproduct1.png)
![Cross Product 1](./assets/crossproduct2.png)

## Event-Condition-Action Rules

* Another name for 'trigger' is an ECA Rule, or Event-Condition-Action Rule
  * Event: typically a type of database modification
  * Condition: any SQL boolean-valued expression
  * Action: any SQL statements

### CREATE TRIGGER

* `CREATE TRIGGER <name>`
* `CREATE OR REPLACE TRIGGER <name>`
  * note: useful if there is a trigger that name and you want to modify the trigger

### The Event
* `AFTER INSERT` can be `BEFORE INSERT`
  * Can be `INSTEAD OF` if the relation is a view
* `INSERT` can be `DELETE` or `UPDATE`
  * `UPDATE` can be `UPDATE ON` a particular attribute

### FOR EACH ROW

* Triggers are either "row-level" or "statement-level"
* `FOR EACH ROW` indicates row-level; its absence indicates statement-level
* Row level triggers: Execute once for each modified tuple
* Statement-level triggers: Execute once for a SQL statement, regardless of how many tuples are modified

### REFERENCING

* `INSERT` statements imply a new tuple (for row-level) or new table (for statement-level)
  * The "table" is the set of inserted tuples
* `DELETE` implies an old tuple or table
* `UPDATE` implies both
* Refer to these by `[NEW OLD] [TUPLE TABLE] AS <name>`

### The Condition

* Any boolean-valued condition
* Evaluated on the database as it would exist before or after the triggering event, depending on whether `BEFORE` or `AFTER` is used
  * But always before the changes take effect
* Access the new/old tuple/table through the names in the `REFERENCING` clause

### The Action

* There can be more than one SQL statement in the action
  * Surround by `BEGIN . . . END` if there is more than one

![The Trigger](./assets/trigger.png)

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

| Command                                                             | Description                                       |
| ------------------------------------------------------------------- | ------------------------------------------------- |
| `ALTER ROLE username WITH PASSWORD ‘newpassword’;` or `/password` | Change the password  of your PostgreSQL account   |
| `\i myfile.sql`                                                     | Import the execution script myfile.sql            |
| `\! pwd`                                                            | Prints current working directory                  |
| `\! ls`                                                             | Lists all files in the current working directory  |
| `\cd {{path name}}`                                                 | Change current working directory to {{path name}} |
| `\l`                                                                | List all databases                                |
| `\dn`                                                               | Display all available schema                      |
| `\d`                                                                | Display all relations (tables) in current schema  |
| `\d {{table}}`                                                      | Display attributes of table (columns)             |
| `\q`                                                                | Exit psql                                         |

![SQL's Three-Valued Logic: Truth Table](./assets/sqllogic.png)

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
