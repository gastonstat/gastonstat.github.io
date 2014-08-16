# Script to generate images for slides
# "Getting Data from the Web with R"

# colors
basegray  = rgb(110/255, 110/255, 110/255)
darkgray = rgb(100/255, 100/255, 100/255)
mustard = rgb(255/255, 199/255, 0/255)
uniblue = rgb(89/255, 132/255, 212/255)
mamey = rgb(255/255, 107/255, 107/255)
mandarina = rgb(229/255, 169/255, 25/255)
background = rgb(246/255, 244/255, 240/255)

main = "PCA Revealed"

titles = c(
  "1. Presentation",
  "2. Introduction",
  "3. Preliminary \n Concepts",
  "4. Summarizing \n Information",
  "5. Geometric \n Approach",
  "6. Minimization \n Approach", 
  "7. PCA \n with R",
  "8. Hacking your \n own PCA",
  "9. Appendix")

xloc = "/Users/Gaston/Desktop/pcarevealed/"

filenames = c(
  "pca1_presentation.png",
  "pca2_introduction.png",
  "pca3_preliminaries.png",
  "pca4_infosum.png",
  "pca5_geometry.png",
  "pca6_minimization.png",
  "pca7_withr.png",
  "pca8_hacking.png",
  "pca9_appendix.png")

files = paste(xloc, filenames, sep="")

for (i in 1:length(titles))
{
  # save it
  png(filename = files[i], width = 600, height = 350)
  op = par(bg = background, mar = rep(0, 4))
  # plot
  plot(0.5, 0.5, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE)
  text(0.5, 0.75, labels = main, col = mustard, cex = 2.5)
  text(0.5, 0.5, labels = titles[i], col = uniblue, cex = 4, pos = 1)
  # reset par
  par(op)
  # off
  dev.off()
}




# save it
gdwr = "Getting Data from \n the Web with R"
png(filename = "/Users/Gaston/Desktop/pcarevealed/webdata_cover.png", 
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


