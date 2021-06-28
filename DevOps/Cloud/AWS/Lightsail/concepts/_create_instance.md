# CREATE AWS Lightsail Instance

1. Instance Location
2. Pick Instance Image (AMI - Amazon Machine Image)
    - ✅ Linux / Unix
        - 🚨 Amazon Linux based AMI uses `yum` instead of `apt-get`
    - 👎 Microsoft Windows
3. Select Blueprint
    - Types:
        1. Apps + OS
            - NodeJS
            - Django
            - Nginx
            - ...
        2. OS Only
            - ✅ Amazon Linux 2
            - Ubuntu
            - Debian

4. Add Launch Script -> a shell script that will run on the instance the first time it launches 
    - _not personally implemented yet ... submit your own notes!!_

5. Configure Key-Pair
    > 🚨 AWS only supports attaching RSA keys to IAM users 🚨 
    > 
    > https://forums.aws.amazon.com/thread.jspa?threadID=250753
   
    - V1 - use `default SSH keypair`
        - AFTER THE INSTANCE IS CREATED: utilize the [Connect to Instance](_connect_to_instance.md) notes to access & update the `.ssh/authorized_keys` directory with needed rsa-ssh keys
    - V2 - set specific (and SINGLE) SSH for access to the instance
        - 🚨 - YOU CAN NOT CHANGE THIS AFTER THE INSTANCE IT CREATED. YOU WOULD NEED TO MAKE A WHOLE NEW INSTANCE
            - ^^ unless you can simple add the additional SSH keys to the `.ssh/authorized_keys` dir
    
6. Tags
    - Key Only Tags
        - _...coming soon..._
    - Key Value Tags
        - _...coming soon..._
