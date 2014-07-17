
# library ape
library(ape)
library(igraph)

# distance matrix 
dist_usarrests = dist(USArrests)

# hierarchical clustering analysis
clus_usarrests = hclust(dist_usarrests, method = "ward.D")

# plot dendrogram
plot(clus_usarrests, hang = -1)

# convert 'hclust' to 'phylo' object
phylo_tree = as.phylo(clus_usarrests)

# get edges
graph_edges = phylo_tree$edge

# get graph from edge list
graph_net = graph.edgelist(graph_edges)

# plot graph
plot(graph_net)

# extract layout (x-y coords)
graph_layout = layout.auto(graph_net)


# additional params
nobs = nrow(USArrests)

# start plot
png("/Users/Gaston/Desktop/dendro_tree_graph.png", width=700)
op = par(mar = c(2, 2, 2, 2))
# 
plot(graph_layout[,1], graph_layout[,2], type = "n", axes = FALSE,
     xlab = "", ylab = "")
# draw tree branches
segments(
  x0 = graph_layout[graph_edges[,1],1], 
  y0 = graph_layout[graph_edges[,1],2],
  x1 = graph_layout[graph_edges[,2],1],
  y1 = graph_layout[graph_edges[,2],2],
  col = "#dcdcdc55", lwd = 3.5
)
# add labels
text(graph_layout[1:nobs,1], graph_layout[1:nobs,2],
     phylo_tree$tip.label, cex = 1.5, xpd = TRUE, font = 1)
#
par(op)
dev.off()
