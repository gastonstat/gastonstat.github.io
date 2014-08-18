# Network (les miserables)

# ========================================================
# Data
# ========================================================
# require igraph
library(igraph)

# read file
mis_graph = read.graph(file="/Users/gaston/Documents/Gaston/GotPlot/data/miserables_graph.txt", format="gml")

# get groups
groups = get.vertex.attribute(mis_graph, "group")

# get vertex names
names = get.vertex.attribute(mis_graph, "label")

# vertex colors palette
vpal = c("#9ca243", "#BEBADA", "#8DA0CB", "#5b6b8e", "#d3e4a6",
         "#afc568",  "#657845", "#f3d581", "#E6AB02", "#b69f60","#81632b")
# vertex colors
vcols = vpal[groups+1]
  
# get edge width
ewidths = get.edge.attribute(mis_graph, "value")

# set layout
set.seed(513)
mis_lay = layout.fruchterman.reingold(mis_graph)

# get numeric edgelist
aux_edgelist = get.edgelist(mis_graph)

# vertex sizes
col1 = aux_edgelist[,1]
col2 = aux_edgelist[,2]
vsize = rep(0, length(names))
for (i in 1:length(names))
{
  tmp = union(which(col1==i), which(col2==i))
  vsize[i] = sum(ewidths[tmp])
}


# ========================================================
# Plot
# default: plot(mis_graph)
# ========================================================
# NETWORK with no names
# prepare to save image
setwd("/Users/gaston/Documents/Gaston/GotPlot/images")
tiff("graph1_miserables.tiff", width=650, height=650)
# set graphic margins
op = par(mar=c(1,1,1,1))
plot(mis_graph, 
     layout = mis_lay,  
     vertex.color = vcols, 
     vertex.size = 20 * sqrt(vsize / max(vsize)), 
     vertex.label = "", 
     vertex.label.family = "sans", 
     vertex.label.color = "gray10", 
     vertex.label.cex = 0.65,
     edge.arrow.size = 0.1, 
     edge.width = ewidths, 
     edge.color = hsv(h=0, s=0, v=0.6, alpha=0.5))
par(op)
dev.off()



# NETWORK with no names
# prepare to save image
tiff("graph2_miserables.tiff", width=650, height=650)
# set graphic margins
op = par(mar=c(1,1,1,1))
plot(mis_graph, 
     layout = mis_lay,  
     vertex.color = vcols, 
     vertex.size = 12, 
     vertex.label = names, 
     vertex.label.family = "sans", 
     vertex.label.color = "gray5", 
     vertex.label.cex = 0.75,
     edge.arrow.size = 0.1, 
     edge.width = ewidths, 
     edge.color = hsv(h=0, s=0, v=0.6, alpha=0.5))
par(op)
dev.off()
