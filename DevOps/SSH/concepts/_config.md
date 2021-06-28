# SSH Config

`~/.ssh/config`

## General
    ```text
        Host *
            AddKeysToAgent yes
            UseKeychain no
            IdentityFile ~/.ssh/<nameOfOldKeyFile>                
            
            IdentityFile ~/.ssh/is_rsa
    ```

## Github
    ```text
        Host github.com
            User git
            Hostname github.com
            PreferredAuthentications publickey
            IdentityFile /home/user/.ssh/id_rsa
    ```