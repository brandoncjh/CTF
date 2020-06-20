# Tokens

## Problem

```
The flag was sent by Mr.4N0NYM4U5 to my victim. But i dont have the username and password of the victim to login into the discord account. 
The only thing i have is a god damn token. Can you help me to get the flag. Ill give you the token and it is all you need. 
Token : NzIyMzM1MTQ5NDA0MTkyODIw.Xuhmgw.SZfbikLok4FRqbHQY4L3htLcTaU

Author : Mr.4N0NYM4U5
```

## Solution

***Note:**: The Discord token has been changed following the competition end*

After doing some searching, I discovered the token given in the challenge description is a Discord token. 
The solvepath involves spoofing the given token so that we can login to Discord as the victim. We follow [this video](https://www.youtube.com/watch?v=co9TvsAtUmY).

Firstly, open Discord in an incognito window. Notice the button in the top left saying "Login" and the blue button which
suggests that we are not currently logged in as anyone:

![](images/tokens1.PNG)

We then open the developer console and insert a new cookie `token` containing the given value:

![](images/tokens2.PNG)

Refresh the window and now we find that we are logged in (presumably as the victim). Notice the buttons from earlier have
changed:

![](images/tokens2a.PNG)

We open Discord chat as the victim, and find that there is a single direct message conversation.

![](images/tokens3.PNG)

The flag is found in the conversation.

![](images/tokens4.PNG)

**Flag**: `zh3r0{1et_7he_F0rce_8e_With_YoU}`