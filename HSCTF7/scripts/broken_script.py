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
