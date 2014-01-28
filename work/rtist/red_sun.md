---
layout: page
title: Red Sun
---

# [R-tist](/work/rtist)

### Red Sun
![](/images/rtist/red_sun.png)

{% highlight r %}
# ========================================================================
# Red Sun
# ========================================================================
# generate pairs of x-y values
theta = seq(0, 2*pi, length = 300)
x = cos(theta)
y = sin(theta)


## png("red_sun.png", width = 700, height = 400)
# set graphical parameters
op = par(bg = "black", mar = rep(0.5, 4))
# open plot
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1), asp = 1)

# first solar layer
segments(rep(0, 299), rep(0, 299), x[1:299]*runif(299, 0.7), 
         y[1:299]*runif(299,0.7), 
         col = hsv(0.95, 1, 1, runif(299, 0.5)), lwd = 1.5)
symbols(0, 0, circles = 0.84, inches = FALSE, fg = "black", 
        bg = "black", add = TRUE)
symbols(0, 0, circles = 0.84, inches = FALSE, fg = hsv(0.95, 1, 1, 0.5), 
        bg = hsv(0.95, 1, 1, 0.5), add = TRUE)
symbols(0, 0, circles = 0.8, inches = FALSE, fg = hsv(0.95, 1, 1, 0.6), 
        bg = hsv(0.95, 1, 1, 0.6), add = TRUE)
symbols(0, 0, circles = 0.76, inches = FALSE, fg = hsv(0.95, 1, 1, 0.7), 
        bg = hsv(0.95, 1, 1, 0.7), add = TRUE)
symbols(0, 0, circles = 0.7, inches = FALSE, fg = hsv(0.95, 1, 1, 0.8), 
        bg = hsv(0.95, 1, 1, 0.8), add = TRUE)
symbols(0, 0, circles = 0.65, inches = FALSE, fg = hsv(0.95, 1, 1), 
        bg = hsv(0.95, 1, 1), add = TRUE)

# second solar layer
segments(rep(0, 299), rep(0, 299), x[1:299]*runif(299, 0.7), 
         y[1:299]*runif(299,0.7), 
         col = hsv(0.95, 1, 1, runif(299, 0.5)), lwd = 1.5)
symbols(0, 0, circles = 0.74, inches = FALSE, fg = "black", 
        bg = "black", add = TRUE)
symbols(0, 0, circles = 0.74, inches = FALSE, fg = hsv(0.95, 1, 1, 0.5), 
        bg = hsv(0.95, 1, 1, 0.5), add = TRUE)
symbols(0, 0, circles = 0.7, inches = FALSE, fg = hsv(0.95, 1, 1, 0.6), 
        bg = hsv(0.95, 1, 1, 0.6), add = TRUE)
symbols(0, 0, circles = 0.66, inches = FALSE, fg = hsv(0.95, 1, 1, 0.7), 
        bg = hsv(0.95, 1, 1, 0.7), add = TRUE)
symbols(0, 0, circles = 0.6, inches = FALSE, fg = hsv(0.95, 1, 1, 0.8), 
        bg = hsv(0.95, 1, 1, 0.8), add = TRUE)
symbols(0, 0, circles = 0.55, inches = FALSE, fg = hsv(0.95, 1, 1), 
        bg = hsv(0.95, 1, 1), add = TRUE)

# third solar layer
segments(rep(0, 299), rep(0, 299), x[1:299]*runif(299, 0.7), 
         y[1:299]*runif(299, 0.7), 
         col = hsv(0.95, 1, 1, runif(299, 0.5)), lwd = 1.5)
symbols(0, 0, circles = 0.64, inches = FALSE, fg = "black", 
        bg = "black", add = TRUE)
symbols(0, 0, circles = 0.64, inches = FALSE, fg = hsv(.95, 1, 1, 0.5), 
        bg = hsv(0.95, 1, 1, 0.5), add=TRUE)
symbols(0, 0, circles = 0.6, inches = FALSE, fg = hsv(0.95, 1, 1, 0.6), 
        bg = hsv(0.95, 1, 1, 0.6), add = TRUE)
symbols(0, 0, circles = 0.56, inches = FALSE, fg = hsv(0.95, 1, 1, 0.7), 
        bg = hsv(0.95, 1, 1, 0.7), add = TRUE)
symbols(0, 0, circles = 0.5, inches = FALSE, fg = hsv(0.95, 1, 1, 0.8), 
        bg = hsv(0.95, 1, 1, 0.8), add = TRUE)
symbols(0, 0, circles = 0.45, inches = FALSE, fg = hsv(0.95, 1, 1), 
        bg = hsv(0.95, 1, 1), add = TRUE)

# signature
legend("bottomright", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray70")
# reset par
par(op)
## dev.off()
{% endhighlight %}