# Terminal-Shell Commands

## General and File Manipulation Commands

| Command                          | Use                                                                                                                                                                                                                                                                               | Notes |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| `man`                            | Get information or help about a command                                                                                                                                                                                                                                           |
| `ls`                             | List directory contents                                                                                                                                                                                                                                                           |
| `pwd`                            | Path of working directory                                                                                                                                                                                                                                                         |
| `cd`                             | Change working directory                                                                                                                                                                                                                                                          |
| `mv`                             | Move file or change name                                                                                                                                                                                                                                                          |
| `cp`                             | Copy file                                                                                                                                                                                                                                                                         |
| `mkdir`                          | Make directory                                                                                                                                                                                                                                                                    |
| `rm`                             | Remove files and directories<br>`-r`: deletes a directory and all of its child directories                                                                                                                                                                                        |
| `echo`                           |                                                                                                                                                                                                                                                                                   |
| `env`                            | Stands for “environment”, and returns a list of the environment variables for the current user                                                                                                                                                                                    |
| `echo $HOME`                     | An environment variable that displays the path of the home directory                                                                                                                                                                                                              |
| `sed 's/snow/rain/' forests.txt` | “stream editor”. Accepts standard input and modifies it, before displaying it as output data<br>In the expression `s/snow/rain/`:<br>`s`: stands for “substitution”.<br>`snow`: the search string, the text to find.<br>`rain`: the replacement string, the text to add in place. |
| `sort`                           | Takes a filename or standard input and orders each line alphabetically, printing it to standard output                                                                                                                                                                            |
| `touch`                          | Creates a new file inside the working directory. It takes in a file name as an argument, and then creates a new empty file in the current working directory                                                                                                                       |
| `uniq`                           | Takes a filename or standard input and prints out every line, removing any exact duplicates                                                                                                                                                                                       |

### Rename a File

```Bash
mv (option) filename1.ext filename2.ext
```

“filename1.ext” is the original, “old” name of the file, and “filename2.ext” is the new name.

| Option | Description                                         |
| ------ | --------------------------------------------------- |
| -f     | by overwriting destination file without prompt      |
| -u     | update - move when source is newer than destination |
| -v     | verbose - print source and destination files        |

### Move a File

```Bash
mv (option) source destination
```

### Copy a File

```Bash
cp SOURCE DEST
cp SOURCE DIRECTORY
cp SOURCE1 SOURCE2 SOURCE3 SOURCEn DIRECTORY
cp [OPTION] SOURCE DEST
cp [OPTION] SOURCE DIRECTORY
```

## Other Commands

| Command | Use                                                                                                                                                                                |
| ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ssh`   | Secure login on remote machine                                                                                                                                                     |
| `scp`   | Secure file copy from or to machine                                                                                                                                                |
| `find`  | Look for file                                                                                                                                                                      |
| `cat`   | Output contents of a file                                                                                                                                                          |
| `grep`  | Search for a string of text<br> `-r`: searches all files in a directory and outputs filenames and lines containing matched results. -R stands for “recursive”                      |
| `>`     | Takes the standard output of the command on the left, and redirects it to the file on the right                                                                                    |
| `>>`    | Takes the standard output of the command on the left and appends (adds) it to the file on the right                                                                                |
| `<`     | Takes the standard input from the file on the right and inputs it into the program on the left                                                                                     |
| `\|`    | The \| takes the standard output of the command on the left, and pipes it as standard input to the command on the right. You can think of this as “command to command” redirection |

## Editors and publishing

| Command | Use         | Notes         |
| ------- | ----------- | ------------- |
| `vim`   | Text editor | [Vim](Vim.md) |

## Account Administration

| Command           | Use                                                                                                                                                                               | Notes |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| `chmod`           | Change permissions on files and directories                                                                                                                                       |
| `~/.bash_profile` | File used to store environment settings. It is commonly called the “bash profile”. When a session starts, it will load the contents of the bash profile before executing commands |

## References  

**[stanford.edu](https://ccrma.stanford.edu/guides/planetccrma/terminal.html)**  
**[github](https://github.com/0nn0/terminal-mac-cheatsheet)**  
**[chmod](https://ss64.com/bash/chmod.html)**  
