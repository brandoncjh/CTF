# Just For Fun

## Problem

```
https://private.vanisco.in/dakaar_lo/

Author: Vanisco
```

## Solution

Accessing the link, we see this page:

![](images/jff1.PNG)

We click the button `"Get Flag"`, and it reloads the page with a new string at the top:

![](images/jff2.PNG)

Papaya, Ostrich, Spinach and Toast; that's an acronym for POST. So maybe we need to send a POST request to the site.
Open up terminal and use `curl` to send a POST request to the webpage. The response contains the flag.

![](images/jff_flag.PNG)

**Flag**: `noob{g00d_hindi_br0}`