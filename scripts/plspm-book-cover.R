## plspm book cover
library(pathdiagram)


# latent variables
ATTACK = latent("Attack", x=0.57, y=0.6, rx=0.09, ry=0.09, 
                fill="#1d8484", font=1, border="gray90", cex=2)
DEFENSE = latent("Defense", x=0.57, y=0.25, rx=0.09, ry=0.09, 
                 fill="gray60", font=1, border="gray90", cex=2)
SUCCESS = latent("Success", x=0.87, y=0.4, rx=0.09, ry=0.09, 
                 fill="#ff9200", font=1, border="gray90", cex=2)


setwd("/Users/Gaston/Desktop/myjekyll/blog/images/website/")
png("plspm_book_cover.png", width=700, height=400)
op = par(mar = rep(0, 4), bg = "gray95")
# open plot window
wall(ylim = c(0, 0.9))
rect(-0.05, -0.05, 0.38, 1.05, col = "#1d8484", border = NA)
# title
text(x = 0.015, y = 0.8, labels="PLS Path", adj=0, cex=3.9, col="white")
text(x = 0.015, y = 0.65, labels="Modeling", adj=0, cex=3.9, col="white")
text(x = 0.015, y = 0.525, labels="with R", adj=0, cex=3.9, col="white")
# author
text(x = 0.015, y = 0.05, labels="Gaston Sanchez", adj=0, cex=2.4, 
     col="orange")
# draw latent variables
draw(ATTACK)
draw(DEFENSE)
draw(SUCCESS)
# arrows of inner model
arrow(from=ATTACK, to=SUCCESS, start="east", end="west", lwd = 5, 
      angle = 21, length = 0.25, col="gray75")
arrow(from=DEFENSE, to=SUCCESS, start="east", end="west", lwd = 5, 
      angle = 21, length = 0.25, col="gray75")
# reset graphical parameters
par(op)
dev.off()



setwd("/Users/Gaston/Desktop/myjekyll/blog/images/website/")
png("strings_book_cover.png", width=700, height=400)
op = par(mar = rep(0, 4), bg = "gray95")
# open plot window
wall(ylim = c(0, 0.9))
rect(-0.05, 0.55, 1.05, 1.05, col = "#5468e5", border = NA)
# title
text(x = 0.015, y = 0.8, labels="Handling and Processing", 
     adj=0, cex=3.8, col="white")
text(x = 0.015, y = 0.65, labels="Strings in R", 
     adj=0, cex=3.8, col="white")
# author
text(x = 0.015, y = 0.05, labels="Gaston Sanchez", adj=0, cex=2.4, 
     col="#5468e5")
# stuff 1
x_set = c(0.5, 0.73)
y_set = c(0.15, 0.225, 0.3, 0.375, 0.45)
stuff = c("print()", "noquote()", "cat()", "format()", "toString()",
          "nchar()", "tolower()", "toupper()", "abbreviate()", "substr()")
aux = 0
for (i in 1L:length(x_set))
{
  for (j in 1L:length(y_set))
  {
    aux = aux + 1
    text(x = x_set[i], y = y_set[j], stuff[aux], family = "mono",
         adj = 0, col = "gray60", cex = 1.7)      
  }
}
# reset graphical parameter
par(op)
dev.off()

