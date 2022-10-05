# Encryption

## [Crypto Module](https://nodejs.org/api/crypto.html)
_wrapper for OpenSSL cryptoigraphic functions (like TLS || HTTPS)_

### OpenSSL 

- newer versions
    - terminal command: `openssl list-message-digest-commands`

            gost-mac
            md4
            md5
            md_gost94
            ripemd160
            sha1
            sha224
            sha256
            sha384
            sha512
            streebog256
            streebog512
            whirlpool

- older versions
    - terminal command: `openssl list-message-digest-commands`

            gost-mac
            md4
            md5
            md_gost94
            ripemd160
            sha1
            sha224
            sha256
            sha384
            sha512
            streebog256
            streebog512
            whirlpool


## What is a Hash?
_fixed-length string of bits that is procedurally & deterministically generated from some arbitrary block of source data_

> Fixed Length: output is always the same length despite the input  
> Deterministic: same input = same output  
> Collision-Resistnt:  
> Unidirectional: hard to reverse  

```javascript
const crypto = require('crypto)
    .crypto.createHash('sha265')
    .update('The String')
    .digest('hex')
```

- `update`:  can be called multiple times to ingest streaming data, like buffers from a file read stream
- `digest`: represents the output format (binary | hex | base64)

## HMAC
_Hash-based Message Authentication Code: process for applying a hash algorithm to both data and a secret key that results in a single final hash. Its use is similar to a vanilla hash but also allows to check the authenticity of the data as well as the integrity of the data_ 

```javascript
require('crypto')
  .createHmac('sha256', 'password')
  .update("If you love node so much why don't you marry it?")
  .digest('hex');
```

> the resulting SHA-256 hash is unique to both the input data and the key


## Ciphers
_allows you to encode and decorde data given a password_

[NodeJS Docs - createCipheriv](https://nodejs.org/docs/latest-v16.x/api/crypto.html#cryptocreatecipherivalgorithm-key-iv-options)  
[NodeJS Docs - createDecipheriv](https://nodejs.org/docs/latest-v16.x/api/crypto.html#cryptocreatedecipherivalgorithm-key-iv-options)

- Both Encoding & Decoding w/ `createCipheriv` & `createDecipheriv`
    - `update()`: returns a chunk of encoded/decoded data instead of requiring one to all `digest`
        - you will likely have to call the `final` method to get the last chunk of encoded information

- the `key` and `iv` are combined together to form a random password
    - 🚨 the size of the `key` and `iv` depends on the chosen algo

- 🚨 aes256 vs aes-256-cbc

### Methods

> crypto.createCipheriv(algorithm, key, iv)  
> crypto.createDecipheriv(algorithm, key, iv)  

| Algo          | Key                   | IV                    | 
| ---           | ---                   | ---                   |
| aes128        | 16 byte (128 bits)    | 16 byte (128 bits)    |
| aes-128-cbc   | 16 byte (128 bits)    | 16 byte (128 bits)    |
| aes192	    | 24 byte (192 bits)    | 16 byte (128 bits)    |
| aes256	    | 32 byte (256 bits)	| 16 byte (128 bits)    |

#### Algorithm

#### Initialization Vector (IV)
_unpredictable and unique_

#### Key



### Open SSL

- newer versions
    - terminal command: `openssl list-cipher-commands`

            aes-128-cbc
            aes-128-ecb
            aes-192-cbc
            aes-192-ecb
            aes-256-cbc
            aes-256-ecb
            base64
            bf
            bf-cbc
            bf-cfb
            bf-ecb
            bf-ofb
            camellia-128-cbc
            camellia-128-ecb
            camellia-192-cbc
            camellia-192-ecb
            camellia-256-cbc
            camellia-256-ecb
            cast
            cast-cbc
            cast5-cbc
            cast5-cfb
            cast5-ecb
            cast5-ofb
            chacha
            des
            des-cbc
            des-cfb
            des-ecb
            des-ede
            des-ede-cbc
            des-ede-cfb
            des-ede-ofb
            des-ede3
            des-ede3-cbc
            des-ede3-cfb
            des-ede3-ofb
            des-ofb
            des3
            desx
            rc2
            rc2-40-cbc
            rc2-64-cbc
            rc2-cbc
            rc2-cfb
            rc2-ecb
            rc2-ofb
            rc4
            rc4-40

- older versions
    - terminal command: `openssl list-cipher-algorithms`

            AES-128-CBC
            AES-128-CFB
            AES-128-CFB1
            AES-128-CFB8
            AES-128-CTR
            AES-128-ECB
            AES-128-OFB
            AES-128-XTS
            AES-192-CBC
            AES-192-CFB
            AES-192-CFB1
            AES-192-CFB8
            AES-192-CTR
            AES-192-ECB
            AES-192-OFB
            AES-256-CBC
            AES-256-CFB
            AES-256-CFB1
            AES-256-CFB8
            AES-256-CTR
            AES-256-ECB
            AES-256-OFB
            AES-256-XTS
            AES128 => AES-128-CBC
            AES192 => AES-192-CBC
            AES256 => AES-256-CBC
            BF => BF-CBC
            BF-CBC
            BF-CFB
            BF-ECB
            BF-OFB
            CAMELLIA-128-CBC
            CAMELLIA-128-CFB
            CAMELLIA-128-CFB1
            CAMELLIA-128-CFB8
            CAMELLIA-128-ECB
            CAMELLIA-128-OFB
            CAMELLIA-192-CBC
            CAMELLIA-192-CFB
            CAMELLIA-192-CFB1
            CAMELLIA-192-CFB8
            CAMELLIA-192-ECB
            CAMELLIA-192-OFB
            CAMELLIA-256-CBC
            CAMELLIA-256-CFB
            CAMELLIA-256-CFB1
            CAMELLIA-256-CFB8
            CAMELLIA-256-ECB
            CAMELLIA-256-OFB
            CAMELLIA128 => CAMELLIA-128-CBC
            CAMELLIA192 => CAMELLIA-192-CBC
            CAMELLIA256 => CAMELLIA-256-CBC
            CAST => CAST5-CBC
            CAST-cbc => CAST5-CBC
            CAST5-CBC
            CAST5-CFB
            CAST5-ECB
            CAST5-OFB
            ChaCha
            DES => DES-CBC
            DES-CBC
            DES-CFB
            DES-CFB1
            DES-CFB8
            DES-ECB
            DES-EDE
            DES-EDE-CBC
            DES-EDE-CFB
            DES-EDE-OFB
            DES-EDE3
            DES-EDE3-CBC
            DES-EDE3-CFB
            DES-EDE3-CFB1
            DES-EDE3-CFB8
            DES-EDE3-OFB
            DES-OFB
            DES3 => DES-EDE3-CBC
            DESX => DESX-CBC
            DESX-CBC
            gost89
            RC2 => RC2-CBC
            RC2-40-CBC
            RC2-64-CBC
            RC2-CBC
            RC2-CFB
            RC2-ECB
            RC2-OFB
            RC4
            RC4-40
            RC4-HMAC-MD5
            AES-128-CBC
            AES-128-CFB
            AES-128-CFB1
            AES-128-CFB8
            AES-128-CTR
            AES-128-ECB
            id-aes128-GCM
            AES-128-OFB
            AES-128-XTS
            AES-192-CBC
            AES-192-CFB
            AES-192-CFB1
            AES-192-CFB8
            AES-192-CTR
            AES-192-ECB
            id-aes192-GCM
            AES-192-OFB
            AES-256-CBC
            AES-256-CFB
            AES-256-CFB1
            AES-256-CFB8
            AES-256-CTR
            AES-256-ECB
            id-aes256-GCM
            AES-256-OFB
            AES-256-XTS
            aes128 => AES-128-CBC
            aes192 => AES-192-CBC
            aes256 => AES-256-CBC
            bf => BF-CBC
            BF-CBC
            BF-CFB
            BF-ECB
            BF-OFB
            blowfish => BF-CBC
            CAMELLIA-128-CBC
            CAMELLIA-128-CFB
            CAMELLIA-128-CFB1
            CAMELLIA-128-CFB8
            CAMELLIA-128-ECB
            CAMELLIA-128-OFB
            CAMELLIA-192-CBC
            CAMELLIA-192-CFB
            CAMELLIA-192-CFB1
            CAMELLIA-192-CFB8
            CAMELLIA-192-ECB
            CAMELLIA-192-OFB
            CAMELLIA-256-CBC
            CAMELLIA-256-CFB
            CAMELLIA-256-CFB1
            CAMELLIA-256-CFB8
            CAMELLIA-256-ECB
            CAMELLIA-256-OFB
            camellia128 => CAMELLIA-128-CBC
            camellia192 => CAMELLIA-192-CBC
            camellia256 => CAMELLIA-256-CBC
            cast => CAST5-CBC
            cast-cbc => CAST5-CBC
            CAST5-CBC
            CAST5-CFB
            CAST5-ECB
            CAST5-OFB
            ChaCha
            des => DES-CBC
            DES-CBC
            DES-CFB
            DES-CFB1
            DES-CFB8
            DES-ECB
            DES-EDE
            DES-EDE-CBC
            DES-EDE-CFB
            DES-EDE-OFB
            DES-EDE3
            DES-EDE3-CBC
            DES-EDE3-CFB
            DES-EDE3-CFB1
            DES-EDE3-CFB8
            DES-EDE3-OFB
            DES-OFB
            des3 => DES-EDE3-CBC
            desx => DESX-CBC
            DESX-CBC
            gost89
            gost89-cnt
            gost89-ecb
            id-aes128-GCM
            id-aes192-GCM
            id-aes256-GCM
            rc2 => RC2-CBC
            RC2-40-CBC
            RC2-64-CBC
            RC2-CBC
            RC2-CFB
            RC2-ECB
            RC2-OFB
            RC4
            RC4-40
            RC4-HMAC-MD5