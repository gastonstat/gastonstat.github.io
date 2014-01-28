---
layout: page
title: Saturn Rings
---

# [R-tist](/work/rtist)

### Saturn Rings
![](/images/rtist/saturn_rings.png)

{% highlight r %}
# ========================================================================
# Saturn Rings
# ========================================================================
# generate pairs of x-y values
x = seq(-50, 50, by = 1)
y = -(x^2)


## png("saturn_rings.png", width = 700, height = 400)
# set graphic parameters
op = par(bg = 'black', mar = rep(0.5, 4))
plot(y, x, type = 'n')
lines(y, x, lwd = 2*runif(1), col = hsv(0.08, 1, 1, alpha = runif(1, 0.5, 0.9)))
for (i in seq(10, 2500, 10))
{
  lines(y-i, x, lwd = 2*runif(1), col = hsv(0.08, 1, 1, alpha = runif(1, 0.5, 0.9)))
}
for (i in seq(500, 600, 10))
{
  lines(y - i, x, lwd = 2*runif(1), col = hsv(0, 1, 1, alpha = runif(1, 0.5, 0.9)))
}
for (i in seq(2000, 2300, 10))
{
  lines(y - i, x, lwd = 2*runif(1), col = hsv(0, 1, 1, alpha = runif(1, 0 .5, 0.9)))
}
for (i in seq(100, 150, 10))
{
  lines(y - i, x, lwd = 2*runif(1), col = hsv(0, 1, 1, alpha = runif(1, 0.5, 0.9)))
}
# signature
legend("bottomright", legend="© Gaston Sanchez", bty = "n", 
       text.col="gray70")
# reset par
par(op)
## dev.off()
{% endhighlight %}