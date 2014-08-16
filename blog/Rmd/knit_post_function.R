
KnitPost <- function(input, base.url = "/") {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  knit(input, envir = parent.frame())
}

setwd("/Users/Gaston/Documents/gastonstat.github.io/blog/Rmd")

KnitPost("2014-08-16-Density-Curves.Rmd")
# KnitPost("2014-04-20-Failing-reading-table-in-R.Rmd")
# KnitPost("2014-01-15-Center-data-in-R.Rmd")
# KnitPost("2012-06-17-PCA-in-R.Rmd")
# KnitPost("2012-07-19-Correspondence-Analysis.Rmd")
# KnitPost("2012-10-03-Dendrograms.Rmd")
# KnitPost("2012-05-31-Google-line-chart.Rmd")
# KnitPost("2012-10-13-MCA-in-R.Rmd")

