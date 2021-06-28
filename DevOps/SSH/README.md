# Secure Shell Protocol (SSH)

🚨 DSA: It’s unsafe and even no longer supported since OpenSSH version 7, you need to upgrade it!
⚠️ RSA: It depends on key size. If it has 3072 or 4096-bit length, then you’re good. Less than that, you probably want to upgrade it. The 1024-bit length is even considered unsafe.
👀 ECDSA: It depends on how well your machine can generate a random number that will be used to create a signature. There’s also a trustworthiness concern on the NIST curves that being used by ECDSA.
✅ Ed25519: It’s the most recommended public-key algorithm available today!

## Resources

1. [Upgrade Your SSH Key to Ed25519](https://medium.com/risan/upgrade-your-ssh-key-to-ed25519-c6e8d60d3c54)


