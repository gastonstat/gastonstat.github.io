---
layout: default
title: Shock Lines
---

# [R-tist](/work/rtist)

### Shock Lines
![](/images/rtist/shock_lines.png)

{% highlight r %}
# ========================================================================
# Shock Lines
# ========================================================================
# generate pairs of x-y values
x = seq(1, 100, length = 500)
y = x + rnorm(500)


## png("shock_lines.png", width = 700, height = 400)
# set graphical paramters
par(bg = "black", mar = rep(0, 4))
# plot
plot(x, y, type = 'n')
for (i in seq(-100, 200, by = 5))
{
  lines(x + rbeta(500, 1, 9), -x + i + rnorm(500), 
        col = hsv(runif(500, 0,.15), 1, 1, runif(500)), 
        lwd = sample(seq(0, 5, length = 20), 1))
}
# signature
legend("bottomright", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray80")
# reset par
par(op)
## dev.off()
{% endhighlight %}