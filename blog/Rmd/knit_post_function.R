
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

# remember to include yaml header lines in the produced md files
# (they are commented out in the Rmd files to avoid jekyll crash)


KnitPost("code-2014-12-21-capturing-R-printed-output.Rmd")
# KnitPost("code-2014-08-16-Density-Curves.Rmd")
# KnitPost("code-2014-04-20-Failing-reading-table-in-R.Rmd")
# KnitPost("code-2014-01-15-Center-data-in-R.Rmd")
# KnitPost("code-2012-06-17-PCA-in-R.Rmd")
# KnitPost("code-2012-07-19-Correspondence-Analysis.Rmd")
# KnitPost("code-2012-10-03-Dendrograms.Rmd")
# KnitPost("code-2012-05-30-Google-line-chart.Rmd")
# KnitPost("code-2012-10-13-MCA-in-R.Rmd")

