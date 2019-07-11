# Yum

| Command                                                                  | Description                                                                                                                                            |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| yum repolist                                                             | List all enabled repositories                                                                                                                          |
| yum list installed                                                       | Lists all packages that are installed on your system                                                                                                   |
| yum install                                                              | Installs the specified package, including packages on which it depends                                                                                 |
| yum check-update                                                         | Checks whether updates exist for packages that are already installed on your system                                                                    |
| yum update                                                               | Updates all packages, including packages on which they depend                                                                                          |
| yum remove                                                               | Removes the specified package                                                                                                                          |
| yum --disablerepo=some-repository install some-package                   | Temporarily remove/disable a yum repo                                                                                                                  |
| yum-config-manager --disable repository                                  | Disable repo                                                                                                                                           |
| yum-config-manager --add-repo http:&#8203;//www.example.com/example.repo | Add repo                                                                                                                                               |
| yum list \| grep php                                                     | List all installed repos starting with "php"                                                                                                           |
| sudo yum replace php72w-common --replace-with=php-common                 | Replace php-common package [centos6](http://ahmed.amayem.com/replacing-yum-plugin-replace-one-yum-install-package-php-with-another-on-linux-centos-6/) |

> -y: Assume yes if prompted

## Resources

**[Oracle](https://docs.oracle.com/cd/E37670_01/E37355/html/ol_creating_yum_repo.html)**  
**[Yum Command Cheat Sheet](https://access.redhat.com/sites/default/files/attachments/rh_yum_cheatsheet_1214_jcs_print-1.pdf)**
