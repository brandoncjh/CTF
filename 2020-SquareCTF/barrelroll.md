Today is the launch of some programmer's REST API Blog!
It is still a work-in-progress, but there are already a few posts up, which you can read and like.
The programmer decided to make two microservices to run their blog:
1. A secure reverse proxy written in Go which checks if a post is hidden. If not, it forwards requests to the blog api

2. A blog api writen in Ruby which handles all blog-related requests

The blog's API:


```
GET /list - lists all blog posts by name and number of likes
GET /contents/{postName} - retrieves the content of a blog posts
POST /like/{postName} - adds a like to a post
```

http://challenges.2020.squarectf.com:9090/