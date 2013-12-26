---
layout: default
title: Blue Bubbles
---

# [R-tist](/work/rtist)

### Blue Bubbles

![](/images/rtist/blue_bubbles.png)

{% highlight r %}
# =============================================================
# Blue bubbles
# =============================================================
# generate x-y values
x = rnorm(300)
y = rnorm(300, 0, 2)

# colors
blues = hsv(h = 0.65, s = 1, v = 1, alpha = runif(100, 0.3, 1))
whites = hsv(h = 0, s = 0, v = 1, alpha = runif(100, 0.3, 0.7))
sizes = c(2.5 * runif(99), 5)


## png("blue_bubbles.png", width = 700, height = 400)
# set graphical parameters
op = par(bg = 'black', mar = rep(0, 4))
# plot
plot(x, y, type = 'n', xlim = c(-2, 2), ylim = c(-2, 2))
points(x, y, pch = 19, cex = 2*sizes, col = hsv(0.6, alpha = 0.3), 
       bg = hsv(0.6, alpha = 0.3))
points(x, y, pch = 19, cex = sizes, col = whites, bg = whites)
points(x, y, pch = 19, cex = sizes, col = blues, bg = blues)
# signature
legend("topright", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray70")
# reset par
par(op)
## dev.off()
{% endhighlight %}

