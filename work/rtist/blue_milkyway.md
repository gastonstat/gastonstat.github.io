---
layout: page
title: Blue Milkyway
---

# [R-tist](/work/rtist)

### Blue Milkyway

![](/images/rtist/blue_milkyway.png)

{% highlight r %}
# ========================================================================
# Blue Milky Way
# ========================================================================
# generate pairs of x-y values
x1 = 1:500
y1 = rnorm(500, 0.5, 2)
x2 = 501:1000
y2 = rnorm(500, -1, 1.2)
x3 = 1001:1500
y3 = rnorm(500, -0.5, 1.5)
x4 = 1501:2000
y4 = rnorm(500, 1, 1.8)

# colors
mycol = hsv(runif(500, 0.6, 0.71), 1, 1, alpha = runif(500, 0.2, 0.9))


## png("blue_milkyway.png", width = 700, height = 400)
# set graphical parameters
op = par(bg = "black", mar = rep(0.5, 4))
# plot
plot(1:2000, c(y1, y2, y3, y4), type = "n")
points(seq(1, 2000, length = 5000), rnorm(5000, 0, 3), 
       col = mycol, pch = '.', cex = 2.5*runif(5000))
points(x1, y1, col = mycol, pch = 19, cex = runif(500))
points(x2, y2, col = mycol, pch = 19, cex = runif(500))
points(x3, y3, col = mycol, pch = 19, cex = runif(500))
points(x4, y4, col = mycol, pch = 19, cex = runif(500))
# signature
legend("bottomright", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray70")
# reset par
par(op)
## dev.off()
{% endhighlight %}

