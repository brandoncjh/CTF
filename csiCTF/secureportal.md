# Secure Portal

## Problem

```
This is a super secure portal with a really unusual HTML file. Try to login.

http://chall.csivit.com:30281/
```

## Solution

The link takes us to a page which requires a password to login.

As per the challenge description, we check out the [source code](files/secureportal/sourcecode.txt) which contains some obfuscation:
```javascript
var _0x575c=['\x32\x2d\x34','\x73\x75\x62\x73\x74\x72\x69\x6e\x67','\x34\x2d\x37','\x67\x65\x74\x49\x74\x65\x6d','\x64\x65\x6c\x65\x74\x65\x49\x74\x65\x6d','\x31\x32\x2d\x31\x34','\x30\x2d\x32','\x73\x65\x74\x49\x74\x65\x6d','\x39\x2d\x31\x32','\x5e\x37\x4d','\x75\x70\x64\x61\x74\x65\x49\x74\x65\x6d','\x62\x62\x3d','\x37\x2d\x39','\x31\x34\x2d\x31\x36','\x6c\x6f\x63\x61\x6c\x53\x74\x6f\x72\x61\x67\x65',];(function(_0x4f0aae,_0x575cf8){var _0x51eea2=function(_0x180eeb){while(--_0x180eeb){_0x4f0aae['push'](_0x4f0aae['shift']());}};_0x51eea2(++_0x575cf8);}(_0x575c,0x78));var _0x51ee=function(_0x4f0aae,_0x575cf8){_0x4f0aae=_0x4f0aae-0x0;var _0x51eea2=_0x575c[_0x4f0aae];return _0x51eea2;};function CheckPassword(_0x47df21){var _0x4bbdc3=[_0x51ee('0xe'),_0x51ee('0x3'),_0x51ee('0x7'),_0x51ee('0x4'),_0x51ee('0xa')];window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('9-12','BE*');window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_0x51ee('0x2'),_0x51ee('0xb'));window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_0x51ee('0x6'),'5W');window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('16',_0x51ee('0x9'));window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_0x51ee('0x5'),'pg');window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]]('7-9','+n');window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_0x51ee('0xd'),'4t');window[_0x4bbdc3[0x0]][_0x4bbdc3[0x2]](_0x51ee('0x0'),'$F');if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0x8'))===_0x47df21[_0x51ee('0x1')](0x9,0xc)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0x2'))===_0x47df21['substring'](0x4,0x7)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0x6'))===_0x47df21[_0x51ee('0x1')](0x0,0x2)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]]('16')===_0x47df21[_0x51ee('0x1')](0x10)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0x5'))===_0x47df21[_0x51ee('0x1')](0xc,0xe)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0xc'))===_0x47df21[_0x51ee('0x1')](0x7,0x9)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0xd'))===_0x47df21[_0x51ee('0x1')](0xe,0x10)){if(window[_0x4bbdc3[0x0]][_0x4bbdc3[0x1]](_0x51ee('0x0'))===_0x47df21[_0x51ee('0x1')](0x2,0x4))return!![];}}}}}}}return![];}
```

Running the chunk of obfuscated code through a de-obfuscator (such as jsnice.org) returns us a better look at the code, particularly the `CheckPassword()`
function:

```javascript
window["localStorage"]["setItem"]("9-12", "BE*");
window["localStorage"]["setItem"]("4-7", "bb=");
window["localStorage"]["setItem"]("0-2", "5W");
window["localStorage"]["setItem"]("16", "^7M");
window["localStorage"]["setItem"]("12-14", "pg");
window["localStorage"]["setItem"]("7-9", "+n");
window["localStorage"]["setItem"]("14-16", "4t");
window["localStorage"]["setItem"]("2-4", "$F");
```
We can see that now we just need to rearrange the substrings in order to obtain the password: `5W$Fbb=+nBE*pg4t^7M`

Upon logging in, we get the flag.

**Flag**: `csictf{l3t_m3_c0nfus3_y0u}`

&nbsp;

#### References:
* https://github.com/javascript-obfuscator/javascript-obfuscator