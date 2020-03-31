# Subversion

## Work Cycle

1. Import existing code into the SVN repository
2. Checkout a working copy of the code
3. Make changes to the code
4. Resolve conflicts
5. Commit the updated code to the SVN repository

|                           | Commands                                                                      | Details                                                                                                                                                                                                                                   |
| ------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Import Code               | svn --username `<USER>` import `<FILE_NAME>` -m "Initial import" `<LOCATION>` | Use the -m option to add a comment explaining why the change was made. Whenever changes are made to the contents of the repository, SVN will expect a comment to be added for the audit log                                               |
| Checkout the working copy | svn --username `<USER>` co `<LOCATION>`                                       | Use the svn co command to check out the latest version of the code to the local file system. You can only check out directories, not individual files.                                                                                    |
| Resolve conflicts         | svn --username `<USER>` update `<FILE_NAME>`                                  | Run the svn update command. This will attempt to bring your working copy up to date with the latest version in the repository. If there are any conflicts they will be flagged for further action before the working copy can be updated. |
| Commit the updated code   | svn --username `<USER>` ci -m "`<MESSAGE>`" `<FILE_NAME>`                     |
Adding new files | svn add `<FILE_NAME>`

Repository URL examples:

* Apache HTTP Server: `https://svn.example.com/repos/MyRepo/MyProject/trunk`
* svnserve: `svn://svn.example.com/repos/MyRepo/MyProject/branches/MyBranch`
* Direct access (Unix-style): `file:///var/svn/repos/MyRepo/MyProject/tags/1.1.0`
* Direct access (Windows-style): `file:///C:/Repositories/MyRepo/trunk/MyProject`

## References

* [Basic Use](https://www2.le.ac.uk/offices/itservices/ithelp/services/svn/how/copy_of_basic)