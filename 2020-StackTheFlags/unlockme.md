# Unlock Me

## Problem

```
Our agents discovered COViD's admin panel! They also stole the credentials minion:banana, but it seems that the user isn't allowed in. Can you find another way?

Admin Panel
```

## Solution

Accessing the link takes us to this login panel supposedly for admins:

<img src= "images/unlockme1.PNG" width = "700">

We try using the credentials that was given in the challenge description (`minion`/`banana`), but we get a response saying that only admins are allowed access to the portal. This is somewhat indicative of what we are required to do: privilege escalation.

Looking in inspector, we find that there is a GET request sent to the `/unlock` endpoint containing a JSON Web Token (JWT) under the "Authorization" field. This is reminiscent of previous CTFs where we have to carry out a JWT downgrade attack.

<img src= "images/unlockme2.PNG" width = "700">

We use [jwt.io](https://jwt.io) to better analyse the token. 

<img src= "images/unlockme3.PNG" width = "700">

Specifically, under the data section, there is a field `role` that is set to `user`. Perhaps what we need to do is to forge a JWT token such that the value of `role` for the "minion" credential is set to `admin` instead. However, in order to forge the token, we would need to know the secret (private key) to sign the token. Since the algorithm used is RS256, it is impossible for us to forge the token directly without knowning the private key. But what we can do instead is to carry out a JWT downgrade attack by changing the algorithm to HS256. This would allow us to forge a new token, as long as we have the public signing key.

<img src= "images/unlockme4.PNG" width = "700">

Going back to the original site, if we inspect the source code, there is a TODO comment saying to "add client side verification using public.pem". This means that the public.pem (aka the public signing key) is directly obtainable from the challenge site. Sure enough, if we access the `/public.pem` endpoint we automatically download the public key. We have everything we need to forge the JWT and carry out our attack.

We can use Python to forge the new JWT. In command line:
```bash
python -c 'import jwt;print(jwt.encode({"username":"minion","role":"admin","iat":1607320016},key=open("public.pem", "r").read(),algorithm="HS256"))'
```
Outputs the token:
```
b'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6Im1pbmlvbiIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTYwNzMyMDAxNn0.oNbzc6cNBG6KtVNB6Sw9k2Xg0TRGF8QW5PeJ1f_517w'
```

We then use curl to query the `/unlock` endpoint from earlier, setting the `Authorization` field in our request header to the JWT token.

<img src= "images/unlockmeflag.PNG" width = "700">


**Flag**: `govtech-csg{5!gN_0F_+h3_T!m3S}`

&nbsp;

#### References:
* https://www.nccgroup.com/sg/about-us/newsroom-and-events/blogs/2019/january/jwt-attack-walk-through/