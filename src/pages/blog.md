@def title = "The Julia Blog"

~~~
{{ insert head.html }}
~~~

<!-- <head>
  <meta name="description" content="This blog discusses numerical, technical, distributed and parallel computing, as well as programming language design in the scope of Julia. Read more here."/>
</head> -->

~~~
{{ insert mainmenu.html }}
~~~

~~~
<br /><br />
~~~

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

~~~
<div class="container">

  <div class="row">
    <div class="col-12">
      <h1>The Julia Blog</h1>

      <p>The Julia blog discusses issues of numerical, technical, distributed and parallel computing, as well as programming language design, and how these issues touch upon the design and implementation of the Julia programming language. Also see the <a href="http://juliacomputing.com/blog/">Julia Computing blog</a> for another source of information regarding ongoing Julia development.</p>
      <p>Blogs from the broader Julia community can be found at <a href="https://www.juliabloggers.com">Julia Bloggers</a>.</p>

      <div class="row">
~~~
          \textoutput{posts}
~~~
        </div>
      </div>
    </div>
  </div>
</div>
~~~

~~~
<br />
~~~

~~~
{{ insert foot.html }}
~~~
