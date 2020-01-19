@def title = "The Julia Blog"

<!--  
General notes

- meta description      => see head.html`
- inclusion of mainmenu =>  see head.html; note that you can  use joker like syntax so  that you don't have  to explicitly specify  all pages
- if you want to introduce hard spaces, you're better off with  div blocks that you could define for instance @@blank @@ and then have some css for `.blank` that puts some vertical space. You can then define a command `\vspace` that wraps  around that.
-->

```julia:posts
#hideall
println("~~~")
for f in readdir(joinpath("src", "pages", "blog"))
    fn = splitext(splitdir(f)[2])[1]
    println("<div class=\"col-lg-4 col-md-12 blog\">")
    println("<h3>")
    println("<a href=\"/pub/blog/$(fn).html\" class=\"title\">", fn, "</a>")
    println("</h3>")
    println("</div>")
end
println("~~~")
```

@@container
@@row
~~~<div class="col-12">~~~
# The Julia Blog

The Julia blog discusses issues of numerical, technical, distributed and parallel computing, as well as programming language design, and how these issues touch upon the design and implementation of the Julia programming language. Also see the [Julia Computing](https://juliacomputing.com/blog/) for another source of information regarding ongoing Julia development.

Blogs from the broader Julia community can be found at [Julia Bloggers](https://www.juliabloggers.com).
~~~</div>~~~
@@
@@row
  \textoutput{posts}
@@
@@
