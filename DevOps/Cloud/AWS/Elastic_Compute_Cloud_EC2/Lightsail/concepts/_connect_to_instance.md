# CONNECT to AWS Lightsail Instance

- ⭐️ https://github.com/yafangy/Tutorial-using-Amazon-AWS-EC2-run-scripts-GitHub/tree/master#method-2-clone-git-to-ec2-instance-recommended
- when trying to SSH into instance you need to PRESENT your private key -> that is checked against the public key saved in the system
- https://www.youtube.com/watch?v=kfWfj76-am8
- https://stackoverflow.com/questions/38230253/multiple-users-connecting-to-aws-ec2-via-ssh
- https://stackoverflow.com/questions/51507504/how-do-you-give-access-to-several-users-to-one-ec2-instance
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managing-users.html
---

## Prerequisites

> - Understand how your instance SSH was initially configured

1. add authorized_keys _(if needed)_
    - Open Browser Based Terminal
    - `ls -a`: to list all files (includes hidden files)
    - `cd .ssh`: to enter the hidden folder
    - `vim authorized_keys`: to modify the file
        - type `i` to enter `INSERT` mode 
        - paste individual `rsa-ssh.pub` key
        - type `ctrl + c`: to exit `INSERT` mode
        - type `wq`: to write (save) & quit the vim editor
    
2. install `git` in instance _(if needed)_
    - Open Browser Based Terminal
    - `sudo yum install git` to install git into the instance 
        - 🚨 `apt-get` will NOT work on Amazon Linux based AMIs (Amazon Machine Images)
---

## SSH Tunneling

### 1. Built In Browser Based

- Easiest way to connect
- Resources:
    - [Lightsail Developer Guide - Connect to Virtual Server](https://github.com/awsdocs/amazon-lightsail-developer-guide/blob/master/doc_source/lightsail-how-to-connect-to-your-instance-virtual-private-server.md)

### 2. Unique SSH Client

- MacOS
    > ssh -i ~/.ssh/id_rsa ec2-user@[INSTANCE_IP]

    - native SSH client in terminal to connect to Linux or Unix based Lightsail instance
    - Resources:
        - [SSH Using Terminal](https://github.com/awsdocs/amazon-lightsail-developer-guide/blob/master/doc_source/amazon-lightsail-ssh-using-terminal.md)
- Windows
    - [PuTTY]() to connect to your Linux or Unix Lightsail instance
    - Resources:
        - [Set-up PuTTY to Connect Using SSH](https://github.com/awsdocs/amazon-lightsail-developer-guide/blob/master/doc_source/lightsail-how-to-set-up-putty-to-connect-using-ssh.md)

