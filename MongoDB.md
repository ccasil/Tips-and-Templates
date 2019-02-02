# MongoDB

**[MongoDB Official Site](https://www.mongodb.com/)**

# Windows

## Setup on Windows

1. Locate the root directory ('/')  
    `cd C:/`
2. Create a folder called data  
    `mkdir data`
3. In C:/data/ create another folder named db
    `mkdir db`

## Booting up the Mongo Server

1. Go to the location of Mongo
    `cd C:/"Program Files"/MongoDB/Server/{{version_number}}/bin/`
2. Run mongod.exe  
    `mongod.exe` or `./mongod` in bash

## Stop MongoDB Community Edition as a Windows Service

1. To stop/pause the MongoDB service, use the Services console:  
    * From the Services console, locate the MongoDB service  
    * Right-click on the MongoDB service and click Stop (or Pause)  
2. Remove MongoDB Community Edition as a Windows Service  
    * Open a Windows command prompt/interpreter (cmd.exe) as an Administrator  
    * Run the following command: `sc.exe delete MongoDB`

# MacOS

## Start the Mongo Server

* `sudo mongod`