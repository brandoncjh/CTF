# XORed

## Problem

```
I was given the following equations. Can you help me decode the flag?

Text moved to XORed.txt.

Author: AC
```

## Solution
**Note:** *calculations can be found under `XORed.txt` in `scripts/XORed` folder.*

```
Obtain Key 1 ^ Key 2 ^ Key 3 ^ Key 4 ^ Key 5.
(Flag ^ Key 1 ^ Key 2 ^ Key 3 ^ Key 4 ^ Key 5) ^ (Key 1 ^ Key 2 ^ Key 3 ^ Key 4 ^ Key 5) gives the flag in hex format.
```
Convert to ASCII to get the flag.

Flag: `flag{n0t_t00_h4rD_h0p3fully}`