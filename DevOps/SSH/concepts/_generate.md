# Generate SSH

> ssh-keygen

| flag | desc | 
| ---  | ---  |
| -a   | # of KDF (Key Derivation Function) Rounds. Higher numbers = slower passphrase verification (greater brute force protection) |
| -t   | type of key to be created | 
| -f   | filename of the generated key file (to be discovered automatically sore in the default `.ssh` directory in your home directory) | 
| -C   | comment: typically <login>@<hostname> of who generated the key

## RSA

> ssh-keygen -a 100 -t rsa -f ~/.ssh/id_rsa -C john@example.com

## Ed25519

> ssh-keygen -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C john@example.com

## DSA

## ECDSA



