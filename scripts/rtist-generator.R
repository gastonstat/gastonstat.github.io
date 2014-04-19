
setwd("/Users/Gaston/Documents/gastonstat.github.io/")

images = system("ls images/rtist", intern = TRUE)

img_names = strsplit(images, split=".", fixed=TRUE)
img_names = unlist(lapply(img_names, function(x) x[1]))

# file name
index = "/Users/Gaston/Documents/gastonstat.github.io/work/rtist/index.html"


# start writing output to 'index' file

# yaml header
cat(file = index, "---", "\n")
cat(file = index, "layout: flexible", "\n", append = TRUE)
cat(file = index, "title: R-tist", "\n", append = TRUE)
cat(file = index, "---", "\n\n", append = TRUE)

# add page title and abstract description
cat(file = index, "<div class=\"prose\">", "\n", append = TRUE)
cat(file = index, "  <h1>R-tist</h1>", "\n\n", append = TRUE)
cat(file = index, "  <h4>Some of my weird and abstract paintings with R</h4>", "\n",
    append = TRUE)
cat(file = index, "</div>", "\n\n", append = TRUE)

# populate gallery section
cat(file = index, "<div id=\"gallery\">", "\n", append = TRUE)


href = "  <a href=\"/work/rtist/"
img = "  <img class=\"mosaic\" src=\"/images/rtist/"

for (i in 1L:length(img_names)) 
{
  # add 'a' tag
  cat(file = index,
      paste(href, img_names[i], ".html\">", sep = ''),
      "\n", append = TRUE)

  # add 'img' element
  cat(file = index,
      paste(img, img_names[i], ".png\" />", sep = ''),
      "\n", append = TRUE)
  
  # close 'a' tag
  cat(file = index, "  </a>\n\n", append = TRUE)
}

# end of 'div' gallery
cat(file = index, "</div>", "\n", append = TRUE)


