# Git

### Create a New Repository on the Command Line

git init
git add .
git commit -m "initial commit"
git remote add origin https://github.com/ccasil/repo-name.git
git push -u origin master

### Push to an Existing Repository from the Command Line
--- |   Command |   Notes 
--- |   --- |   --- 
1|   git add . |   Add files to the staging area 
2|   git commit -m ""  | Add files to the staging area with a message
3|   git push  | Upload local repository content to a remote repository
***
git remote add origin https://github.com/ccasil/repo-name.git
git push -u origin master