---
layout: page
title: "Gauge"
---











# [Got Plot?](/work/gotplot)

#### Gauge Chart

![center](/work/gotplot/figs/gauge-plot.png) 



### R Code





{% highlight r %}
# ========================================================
# Plot
# ========================================================
# open plot
plot(border_cir$x, border_cir$y, type="n", asp=1, 
     xlim=c(-1.05,1.05), ylim=c(-1.05,1.05))
# yellow slice
polygon(c(Syel$x, 0), c(Syel$y, 0),  
        border = "orange", col = "orange", lty = NULL)
# red slice
polygon(c(Sred$x, 0), c(Sred$y, 0),  
        border = "tomato2", col = "tomato2", lty = NULL)
# add white central cirle to hide slices
points(0, 0, col="white", pch=19, cex=30)
# add gray border
lines(external_cir$x, external_cir$y, col="gray85", lwd=20)
# add external border
lines(border_cir$x, border_cir$y, col="gray20", lwd=2)
# add minor ticks
arrows(x0=tix1_out$x, y0=tix1_out$y, x1=tix1_in$x, y1=tix1_in$y,
       length=0, lwd=2.5, col="gray55")
arrows(x0=tix2_out$x, y0=tix2_out$y, x1=tix2_in$x, y1=tix2_in$y,
        length=0, lwd=2.5, col="gray55")
arrows(x0=tix3_out$x, y0=tix3_out$y, x1=tix3_in$x, y1=tix3_in$y,
       length=0, lwd=2.5, col="gray55")
arrows(x0=tix4_out$x, y0=tix4_out$y, x1=tix4_in$x, y1=tix4_in$y,
       length=0, lwd=2.5, col="gray55")
# add major ticks
arrows(x0=major_ticks_out$x, y0=major_ticks_out$y,
       x1=major_ticks_in$x, y1=major_ticks_in$y, length=0, lwd=4)
# add value
value = 60
text(0, -0.65, value, cex=4)
# prepare needle for value
val = (value/100) * (12/8)
v = -1 * val * pi + 10*pi/8
# value coordinates for arrow
val_x = 0.7 * cos(v)
val_y = 0.7 * sin(v)
# add needle
arrows(0, 0, val_x, val_y, col="#f38171", lwd=7)
# add central point
points(0, 0, col="#2e9ef3", pch=19, cex=5)

# value coordinates for arrow
# prepare needle for value
v0 = -1 * 0 * pi + 10*pi/8
z0x = 0.65 * cos(v0)
z0y = 0.65 * sin(v0)
v100 = -1 * 12/8 * pi + 10*pi/8
z100x = 0.65 * cos(v100)
z100y = 0.65 * sin(v100)
text(z0x, z0y, labels="0", col="gray50")
text(z100x, z100y, labels="100", col="gray50")
{% endhighlight %}

