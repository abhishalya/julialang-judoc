# This file was generated, do not modify it. # hide
#hideall
println("~~~") # start HTML
println("<ul>")
for f in readdir(joinpath("src", "pages"))
    fn = splitext(splitdir(f)[2])[1]
    println("<li>")
    println("<a href=\"/pub/$(fn).html\">", fn, "</a>")
    println("</li>")
end
println("</ul>")
println("~~~") # end HTML