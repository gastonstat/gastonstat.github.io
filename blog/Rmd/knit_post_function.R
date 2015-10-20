
KnitPost <- function(input, base.url = "/") {
  require(knitr)
  opts_knit$set(base.url = base.url)
  fig.path <- paste0("figs/", sub(".Rmd$", "", basename(input)), "/")
  opts_chunk$set(fig.path = fig.path)
  opts_chunk$set(fig.cap = "center")
  render_jekyll()
  # output file
  output <- substr(input, 6, nchar(input))
  output <- sub('Rmd$', 'md', output)
  output <- paste0('_posts/', output)
  # make md file and figs
  input <- paste0('blog/Rmd/', input)
  knit(input, output, envir = parent.frame())
}


# i <- 0
# repeat {
#   x <- scan("_posts/2015-10-20-crocodile2.md", what = "", 
#             n = 1, skip = i)
#   print(x)
#   if (x == "") break
#   i <- i + 1
# }


#setwd("~/Documents/gastonstat.github.io/blog/Rmd")
setwd("~/Documents/gastonstat.github.io")

# remember to include yaml header lines in the produced md files
# (they are commented out in the Rmd files to avoid jekyll crash)

KnitPost("code-2015-10-20-crocodile2.Rmd")


#KnitPost("code-2015-10-19-crocodile-problem.Rmd")
# KnitPost("code-2015-02-23-splitting-rows.Rmd")
# KnitPost("code-2014-12-21-capturing-R-printed-output.Rmd")
# KnitPost("code-2014-08-16-Density-Curves.Rmd")
# KnitPost("code-2014-04-20-Failing-reading-table-in-R.Rmd")
# KnitPost("code-2014-01-15-Center-data-in-R.Rmd")
# KnitPost("code-2012-06-17-PCA-in-R.Rmd")
# KnitPost("code-2012-07-19-Correspondence-Analysis.Rmd")
# KnitPost("code-2012-10-03-Dendrograms.Rmd")
# KnitPost("code-2012-05-30-Google-line-chart.Rmd")
# KnitPost("code-2012-10-13-MCA-in-R.Rmd")

