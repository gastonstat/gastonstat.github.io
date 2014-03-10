
# ====================================================================
# plspm
# ====================================================================
library(plspm)

# load dataset satisfaction
data(satisfaction)

# path matrix
IMAG = c(0,0,0,0,0,0)
EXPE = c(1,0,0,0,0,0)
QUAL = c(0,1,0,0,0,0)
VAL = c(0,1,1,0,0,0)
SAT = c(1,1,1,1,0,0)
LOY = c(1,0,0,0,1,0)
sat_path = rbind(IMAG, EXPE, QUAL, VAL, SAT, LOY)

# plot diagram of path matrix
innerplot(sat_path)

# blocks of outer model
sat_blocks = list(1:5, 6:10, 11:15, 16:19, 20:23, 24:27)

# vector of modes (reflective indicators)
sat_mod = rep("A", 6)

# apply plspm
satpls = plspm(satisfaction, sat_path, sat_blocks, modes = sat_mod,
               scaled = FALSE)

# plot diagram of the inner model
innerplot(satpls)

png("/Users/Gaston/Desktop/software_plot_plspm.png",width=700,height=500)
op = par(mar = c(0,0,0,0))
plot(satpls, cex.txt=1.3, box.cex=1.3, arr.width = 0.3, arr.lwd=4)
par(op)
dev.off()


# ====================================================================
# plsdepot
# ====================================================================
library(plsdepot)

# predictand variable: price of vehicles
data(vehicles)

# apply plsreg2 extracting 2 components (no cross-validation)
pls2_one = plsreg2(vehicles[,1:12], vehicles[,13:16], comps=2, crosval=FALSE)

# plot variables
plot(pls2_one)

png("/Users/Gaston/Desktop/software_plot_plsdepot.png",width=700,height=500)
op = par(mar = c(0,0,0,0))
plot(pls2_one, cex = 1.7, main="")
par(op)
dev.off()


# ====================================================================
# pathdiagram
# ====================================================================
library(pathdiagram)

ingredients = list(
  eggs = manifest("eggs", x=0.25, y=0.7, width=0.10, height=0.08, cex=1.5),
  milk = manifest("milk", x=0.25, y=0.6, width=0.10, height=0.08, cex=1.5),
  flour = manifest("flour", x=0.25, y=0.5, width=0.10, height=0.08, cex=1.5),
  sugar = manifest("sugar", x=0.25, y=0.4, width=0.10, height=0.08, cex=1.5),
  butter = manifest("butter", x=0.25, y=0.3, width=0.10, height=0.08, cex=1.5)
)

# latent variables
pancakes = latent("PANCAKES", x=0.7, y=0.6, rx=0.09, ry=0.06, cex=1.5)
waffles = latent("WAFFLES", x=0.7, y=0.4, rx=0.09, ry=0.06, cex=1.5)


png("/Users/Gaston/Desktop/software_plot_pathdiagram.png",width=550,height=380)
op = par(mar = c(0,0,0,0))
# open wall
wall(xlim = c(0.2, 0.8), ylim = c(0.25, 0.75))
# draw manifest variables
for (i in 1:length(ingredients)) {
  draw(ingredients[[i]])
}
# draw latent variables
draw(pancakes)
draw(waffles)
# draw arrows
for (i in 1:length(ingredients)) {
  arrow(from=ingredients[[i]], to=pancakes, start="east", end="west")
  arrow(from=ingredients[[i]], to=waffles, start="east", end="west")
}
par(op)
dev.off()


# ====================================================================
# pathmox
# ====================================================================
library(pathmox)

data(csimobile)

# select manifest variables
data_mobile = csimobile[,8:33]

# define path matrix (inner model)
IMAG = c(0, 0, 0, 0, 0, 0, 0)
EXPE = c(1, 0, 0, 0, 0, 0, 0)
QUAL = c(0, 1, 0, 0, 0, 0, 0)
VAL = c(0, 1, 1, 0, 0, 0, 0)
SAT = c(1, 1, 1, 1, 0, 0, 0)
COM = c(0, 0, 0, 0, 1, 0, 0)
LOY = c(1, 0, 0, 0, 1, 1, 0)
mob_path = rbind(IMAG, EXPE, QUAL, VAL, SAT, COM, LOY)

# blocks of indicators (outer model)
mob_blocks = list(1:5, 6:9, 10:15, 16:18, 19:21, 22:24, 25:26)
mob_modes = rep("A", 7)

# apply plspm
mob_pls = plspm(data_mobile, mob_path, mob_blocks, modes = mob_modes,
                scheme="factor", scaled=FALSE)

# re-ordering those segmentation variables with ordinal scale
# (Age and Education)
csimobile$Education = factor(csimobile$Education,
                             levels=c("basic","highschool","university"),
                             ordered=TRUE)

# select the segmentation variables
seg_vars = csimobile[,1:7]

# Pathmox Analysis
mob_pathmox = pathmox(mob_pls, seg_vars, signif=.10, size=.10, deep=2)


png("/Users/Gaston/Desktop/software_plot_pathmox.png",width=700,height=500)
op = par(mar = c(0, 0, 0, 0))
plot(mob_pathmox, root.cex = 1.2, node.cex = 1.2, leaf.cex = 1.2,
     seg.cex = 1.2, cat.cex = 1.4, main="")
par(op)
dev.off()


# ====================================================================
# arcdiagram
# ====================================================================
library(arcdiagram)

# ggplot colors
ggcols <- function(n, alfa) {
  hues = seq(15,375,length=n+1)
  hcl(h=hues, l=65, c=100, alpha=alfa)[1:n]
}

# tree graph example
covergraph = graph.full(n=8)
V(covergraph)$name = toupper(letters[1:vcount(covergraph)])
cover_edges = get.edgelist(covergraph)

# plot
png("/Users/Gaston/Desktop/software_plot_arcdiagram.png",width=700,height=400)
op = par(mar = c(1,0,1,0))
set.seed(324)
arcplot(cover_edges, lwd.arcs=runif(28,3,12), col.arcs=ggcols(10, 0.5)[7:10], 
        show.nodes=TRUE, cex.nodes=2, col.nodes="gray90", las=1, line=-0.3,
        cex.labels=1.5)
par(op)
dev.off()


# ====================================================================
# colortools
# ====================================================================
library(colortools)

wheel("tomato")

# plot
png("/Users/Gaston/Desktop/software_plot_colortools.png",width=700,height=400)
op = par(mar = c(1.5,0,1.5,0))
wheel("tomato", cex = 1.3)
par(op)
dev.off()


# ====================================================================
# DiscriMiner
# ====================================================================
library(DiscriMiner)

# load bordeaux wines dataset
data(bordeaux)

# descriptive discriminant analysis with within covariance matrix
my_dda1 = desDA(bordeaux[,2:5], bordeaux$quality)

# plot factor coordinates with ggplot
library(ggplot2)
bordeaux$f1 = my_dda1$scores[,1]
bordeaux$f2 = my_dda1$scores[,2]

ggplot(data=bordeaux, aes(x=f1, y=f2, colour=quality)) +
  geom_hline(yintercept=0, colour="gray70") +
  geom_vline(xintercept=0, colour="gray70") +
  geom_text(aes(label=year), size=4)

ggsave("/Users/Gaston/Desktop/software_plot_discriminer.png")
