# Gitignore

The .gitignore file is a text file that tells Git which files or folders to ignore in a project.

A local .gitignore file is usually placed in the root directory of a project. You can also create a global .gitignore file and any entries in that file will be ignored in all of your Git repositories.

The entries in this file can also follow a matching pattern.

* `*` is used as a wildcard match
* `/` is used to ignore pathnames relative to the .gitignore file
* `#` is used to add comments to a .gitignore file

This is an example of what the .gitignore file could look like:

```sh
# Ignore Mac system files
.DS_store

# Ignore node_modules folder
node_modules

# Ignore all text files
*.txt

# Ignore files related to API keys
.env

# Ignore SASS config files
.sass-cache

# ignores any file named "secret.txt"
secret.txt
# ignores any directory named "secrets"
secrets/
# ignores a file named "hidden.txt" located at the root of your working directory
/hidden.txt
# ignores a directory called "node_modules" located at the root of your working directory
/node_modules/
# ignores any file with a .png extension
*.png
# ignores any file or directory that begins in "cache", such as cache-file-01, cached_assets/, etc.
cache*
# ignores any file or directory that ends in "data", such as project_data/, big_file_of_data
*data
```

To add or change your global .gitignore file, run the following command:

```cmd
git config --global core.excludesfile ~/.gitignore_global
```

This will create the file ~/.gitignore_global. Now you can edit that file the same way as a local .gitignore file. All of your Git repositories will ignore the files and folders listed in the global .gitignore file.

## Resources

**[Useful .gitignore templates](https://github.com/github/gitignore)**  
**[git-scm](https://git-scm.com/docs/gitignore)**