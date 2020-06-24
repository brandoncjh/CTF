root@kali:/home/kali/Desktop# ftp hackit.zh3r0.ml 324
Connected to hackit.zh3r0.ml.
220 (vsFTPd 3.0.3)
Name (hackit.zh3r0.ml:kali): anonymous
331 Please specify the password.
Password:
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
500 Illegal PORT command.
ftp: bind: Address already in use
ftp> passive
Passive mode on.
ftp> ls -al
227 Entering Passive Mode (139,59,3,42,71,45).
150 Here comes the directory listing.
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 .
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ..
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ...
-rw-r--r--    1 ftp      ftp            22 Jun 18 09:06 test.txt
226 Directory send OK.
ftp> cd ..
250 Directory successfully changed.
ftp> ls -al
227 Entering Passive Mode (139,59,3,42,54,4).
150 Here comes the directory listing.
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 .
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ..
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ...
-rw-r--r--    1 ftp      ftp            22 Jun 18 09:06 test.txt
226 Directory send OK.
ftp> cd ...
250 Directory successfully changed.
ftp> ls -al
227 Entering Passive Mode (139,59,3,42,185,130).
150 Here comes the directory listing.
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 .
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ..
drwxr-xr-x    2 ftp      ftp          4096 Jun 18 09:06 ...
-rw-r--r--    1 ftp      ftp            46 Jun 18 09:06 .stayhidden
-rw-r--r--    1 ftp      ftp            22 Jun 18 09:06 test.txt
226 Directory send OK.
ftp> get .stayhidden
local: .stayhidden remote: .stayhidden
227 Entering Passive Mode (139,59,3,42,230,199).
150 Opening BINARY mode data connection for .stayhidden (46 bytes).
226 Transfer complete.
46 bytes received in 0.00 secs (189.5438 kB/s)
ftp> cd ...
250 Directory successfully changed.
ftp> ls -al
227 Entering Passive Mode (139,59,3,42,78,65).
150 Here comes the directory listing.
drwxr-xr-x    2 ftp      ftp          4096 Jun 18 09:06 .
drwxr-xr-x    3 ftp      ftp          4096 Jun 18 09:06 ..
-rw-r--r--    1 ftp      ftp            34 Jun 18 09:06 .flag
-rw-r--r--    1 ftp      ftp            22 Jun 18 09:06 test.txt
226 Directory send OK.
ftp> get .flag
local: .flag remote: .flag
227 Entering Passive Mode (139,59,3,42,201,12).
150 Opening BINARY mode data connection for .flag (34 bytes).
226 Transfer complete.
34 bytes received in 0.00 secs (142.5027 kB/s)
ftp> quit
221 Goodbye.
root@kali:/home/kali/Desktop# ls -al
total 52
drwxr-xr-x  3 kali kali 4096 Jun 24 11:19 .
drwxr-xr-x 21 kali kali 4096 Jun 24 11:04 ..
-rw-r--r--  1 kali kali   34 Jun 12 16:21 bla
-rw-r--r--  1 kali kali   34 Jun 24 11:15 .flag
-rw-r--r--  1 kali kali 1575 Jun  8 00:56 nodejsshell.py
drwxr-xr-x  2 kali kali 4096 Jun 12 11:07 noobctf0x1
-rw-r--r--  1 kali kali 2220 Jun 17 12:06 ofbscript.py
-rw-r--r--  1 kali kali 2800 Jul 17  2019 php-backdoor.php
-rw-r--r--  1 kali kali 5338 Jun 21 02:41 seriouslyshell.txt
-rw-r--r--  1 kali kali   46 Jun 24 11:22 .stayhidden
-rw-r--r--  1 root root   22 Jun 24 11:19 test.txt
-rw-r--r--  1 kali kali  348 Jun 17 13:01 webshell.php
root@kali:/home/kali/Desktop# cat .stayhidden
Employee ID: 6890d90d349e3757013b02e495b1a87f
root@kali:/home/kali/Desktop# cat .flag
Flag 2: zh3r0{You_know_your_shit}