
KnitGotplot <- function(input, base.url = "/work/gotplot/") {
  require(knitr)
  opts_knit$set(base.url = base.url)
#  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  fig.path <- paste0("figs/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}

setwd("/Users/Gaston/Documents/gastonstat.github.io/work/gotplot")

# KnitGotplot("Rmd/bar-chart.Rmd")
# KnitGotplot("Rmd/stacked-chart.Rmd")
# KnitGotplot("Rmd/boxplots.Rmd")

KnitGotplot("Rmd/bullet-chart.Rmd")
KnitGotplot("Rmd/density.Rmd")
KnitGotplot("Rmd/error-bars.Rmd")

KnitGotplot("Rmd/histogram.Rmd")
KnitGotplot("Rmd/line-step-chart.Rmd")
KnitGotplot("Rmd/lines-chart.Rmd")


KnitGotplot("Rmd/scatter-plot.Rmd")

KnitGotplot("Rmd/gauge.Rmd")

KnitGotplot("Rmd/grouped-bar-chart.Rmd")
KnitGotplot("Rmd/heatmap-cars.Rmd")
KnitGotplot("Rmd/heatmap-ggplot.Rmd")
