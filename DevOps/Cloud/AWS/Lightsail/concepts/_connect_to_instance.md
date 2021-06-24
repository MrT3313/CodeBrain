# CONNECT to AWS Lightsail Instance

## Prerequisites

> - Understand how your instance SSH was initially configured

- add authorized_keys
    - Open Browser Based Terminal
    - `ls -a`: to list all files (includes hidden files)
    - `cd .ssh`: to enter the hidden folder
    - `vim authorized_keys`: to modify the file
        - type `i` to enter `INSERT` mode 
        - paste individual `rsa-ssh.pub` key
        - type `ctrl + c`: to exit `INSERT` mode
        - type `wq`: to write (save) & quit the vim editor
    
- install `git` in instance (if blueprint/image does not include it)
    - Open Browser Based Terminal
    - `sudo yum install git` to install git into the instance 
        - 🚨 `apt-get` will NOT work on Amazon Linux based AMIs (Amazon Machine Images)
---

## SSH Tunneling

### _Built In Browser Based_


### Unique SSH Client
