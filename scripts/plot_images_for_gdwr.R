# Script to generate images for slides
# "Getting Data from the Web with R"

# colors
basegray  = rgb(110/255, 110/255, 110/255)
darkgray = rgb(100/255, 100/255, 100/255)
lightgray = rgb(200/255, 200/255, 200/255)
turquoise = rgb(81/255, 193/255, 188/255)
mamey = rgb(255/255, 107/255, 107/255)
mandarina = rgb(229/255, 169/255, 25/255)
background = rgb(246/255, 244/255, 240/255)

main = "Getting Data from the Web with R"

titles = c(
  "1. Introduction",
  "2. Reading files \n from the Web",
  "3. Basics of XML \n and HTML",
  "4. Parsing XML \n and HTML content",
  "5. Handling JSON data",
  "6. HTTP Basics \n and the RCurl Package", 
  "7. Getting data \n via Web Forms",
  "8. Getting data \n via Web APIs",
  "9. Web Scraping \n Case Study")

xloc = "/Users/Gaston/Desktop/gwdr/"

filenames = c(
  "gwdr1_intro.png",
  "gwdr2_files.png",
  "gwdr3_xml.png",
  "gwdr4_parsing.png",
  "gwdr5_json.png",
  "gwdr6_http.png",
  "gwdr7_forms.png",
  "gwdr8_apis.png",
  "gwdr9_scrape.png")

files = paste(xloc, filenames, sep="")

for (i in 1:length(titles))
{
  # save it
  png(filename = files[i], width = 600, height = 350)
  op = par(bg = background, mar = rep(0, 4))
  # plot
  plot(0.5, 0.5, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE)
  text(0.5, 0.75, labels = main, col = lightgray, cex = 2.5)
  text(0.5, 0.5, labels = titles[i], col = turquoise, cex = 4, pos = 1)
  # reset par
  par(op)
  # off
  dev.off()
}




# save it
gdwr = "Getting Data from \n the Web with R"
png(filename = "/Users/Gaston/Desktop/gwdr/webdata_cover.png", 
    width = 700, height = 400)
op = par(bg = "#454545", mar = rep(0, 4))
# plot
plot(0.5, 0.5, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE)
#rect(-0.1, 0.8, 1.1, 1.1, col = mandarina, border = NA)
text(0.335, 0.7, col = "white", cex = 4, pos = 1,
     labels = "Getting ")
text(0.55, 0.7, col = "turquoise", cex = 4, pos = 1,
     labels = "Data")
text(0.73, 0.7, col = "white", cex = 4, pos = 1,
     labels = "from")
text(0.3, 0.55, col = "white", cex = 4, pos = 1,
     labels = "the")
text(0.45, 0.55, col = mandarina, cex = 4, pos = 1,
     labels = "Web")
text(0.615, 0.55, col = "white", cex = 4, pos = 1,
     labels = "with")
text(0.73, 0.55, col = mamey, cex = 4, pos = 1,
     labels = "R")
#text(0.5, 0.6, labels = gdwr, col = "white", cex = 4, pos = 1)
text(x = 0.5, y = 0.05, labels="Gaston Sanchez", cex=2, 
     col = "white")
# reset par
par(op)
# off
dev.off()



# image for blog post
gdwr = "Getting Data from \n the Web with R"
png(filename = "/Users/Gaston/Desktop/gwdr/webdata_post.png", 
    width = 600, height = 350)
op = par(bg = "#454545", mar = rep(0, 4))
# plot
plot(0.5, 0.5, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE)
#rect(-0.1, 0.8, 1.1, 1.1, col = mandarina, border = NA)
text(0.31, 0.7, col = "white", cex = 4, pos = 1,
     labels = "Getting ")
text(0.55, 0.7, col = "turquoise", cex = 4, pos = 1,
     labels = "Data")
text(0.75, 0.7, col = "white", cex = 4, pos = 1,
     labels = "from")
text(0.27, 0.55, col = "white", cex = 4, pos = 1,
     labels = "the")
text(0.44, 0.55, col = mandarina, cex = 4, pos = 1,
     labels = "Web")
text(0.63, 0.55, col = "white", cex = 4, pos = 1,
     labels = "with")
text(0.76, 0.55, col = mamey, cex = 4, pos = 1,
     labels = "R")
#text(0.5, 0.6, labels = gdwr, col = "white", cex = 4, pos = 1)
text(x = 0.5, y = 0.05, labels="Gaston Sanchez", cex=2, 
     col = "#707070")
# reset par
par(op)
# off
dev.off()


# save it
png(filename = "/Users/Gaston/Desktop/gwdr/ItDT.png", 
    width = 600, height = 400)
op = par(bg = "#303030", mar = rep(0, 4))
# plot
plot(0.5, 0.5, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE)
rect(-0.1, 0.9, 1.1, 0.95, col = rgb(0,1,0,0.85), border = NA)
text(0.5, 0.82, col = "white", cex = 2, pos = 1,
     labels = "INTRODUCTION TO")
text(0.5, 0.7, col = "white", cex = 3.5, pos = 1,
     labels = "DATA")
text(0.5, 0.55, col = "white", cex = 3.5, pos = 1,
     labels = "TECHNOLOGIES")
text(0.5, 0.3, col = "green", cex = 1.8, pos = 1,
     labels = "^((HT|X)M|SQ)L|R$")
text(x = 0.5, y = 0.05, labels="Paul Murrell", cex=2, 
     col = "white")
# reset par
par(op)
# off
dev.off()
