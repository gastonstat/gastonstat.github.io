---
layout: default
title: Green Bolts
---

# [R-tist](/work/rtist)

### Green Bolts

![](/images/rtist/green_bolts.png)

{% highlight ruby %}
# ========================================================================
# Green Bolts
# ========================================================================
# population size
size = 250

# number of bolts
n = 50

# number of generations
gens = 70

# colors
greens = hsv(h = 0.35, s = 1, v = 1, alpha = runif(n, 0.2, 0.8))


## png("green_bolts.png", width = 700, height = 400)
# set graphical parameters
par(mar = rep(0, 4), bg = 'black')
# plot
plot(1:gens, rep(0, gens), type = 'l', ylim = c(0, 1), xaxt = 'n', 
     yaxt = 'n', xlab = "", ylab = "")
for (j in 1:n)
{
  # initial probability
  p = 0.5
  freq = c(rep(p, 10), rep(NA, gens - 10))
  for (i in 11:gens)
  {
    aux = rbinom(1, size, p)
    p = aux / size
    freq[i] = p
  }
  lwds = sample(seq(0.25, 3, by = 0.15), 1)
  # tossing coin
  coin = rbinom(1, 1, 0.5)
  if (coin == 0)
  {
    temp = lowess(freq ~ 1:gens)
    lines(temp$x, temp$y, col = greens[j], lwd = lwds)
  } else {
    lines(1:gens, freq, type = 'l', col = greens[j], lwd = lwds)          
  }
}
# signature
legend("bottomleft", legend = "© Gaston Sanchez", bty = "n", 
       text.col = "gray70")
# reset par
par(op)
## dev.off()
{% endhighlight %}