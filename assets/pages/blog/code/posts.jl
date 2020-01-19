# This file was generated, do not modify it. # hide
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