# PostgreSQL

__[PostgreSQL Official](https://www.postgresql.org/docs/)__

Command | Description
--- | ---
`ALTER ROLE username WITH PASSWORD ‘newpassword’;` or `/password` | Change the password  of your PostgreSQL account  
`CREATE SCHEMA myschema;` | Create schema named myschema  
`ALTER ROLE username SET SEARCH_PATH TO myschema;` | To set the default schema, you modify your search path  
`SHOW SEARCH_PATH;` | Verify your search path  
`DROP TABLE tablename` | Get rid of table tablename  
`Delete from tablename` | Get rid of all tuples in tablename without deleting the table itself  
`DROP SCHEMA myschema CASCADE;` | Drop a schema myschema  
`\i myfile.sql` | Import the execution script myfile.sql  
`\! pwd` | Prints current working directory  
`\cd {{path name}}` | Change current working directory to {{path name}}  
`\d` | Display all relations (tables) in current schema
`\d {{table}}` | Display attributes of table  
`\dn` | Display all available schema  
`\q` | Exit psql  