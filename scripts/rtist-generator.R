
setwd("/Users/Gaston/Documents/gastonstat.github.io/")

images = system("ls images/rtist", intern = TRUE)

img_names = strsplit(images, split=".", fixed=TRUE)
img_names = unlist(lapply(img_names, function(x) x[1]))

# file name
index = "/Users/Gaston/Documents/gastonstat.github.io/work/rtist/index.md"

# fill file
cat(file = index, "---", "\n")
cat(file = index, "layout: page", "\n", append = TRUE)
cat(file = index, "title: R-tist", "\n", append = TRUE)
cat(file = index, "---", "\n\n", append = TRUE)
cat(file = index, "# R-tist", "\n\n", append = TRUE)
cat(file = index, "Some of my weird and abstract paintings with R", "\n\n",
    append = TRUE)

for (i in 1L:length(img_names)) {
  cat(file = index,
      paste("[![", img_names[i], "]", 
            "(/images/rtist/", images[i], ")](", 
            "/work/rtist/", img_names[i], ".html)",
            sep = ''),
      "\n\n", append = TRUE)
}


