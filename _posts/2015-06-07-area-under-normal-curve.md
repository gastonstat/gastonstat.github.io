---
layout: post
title: "How to plot areas under the normal curve in R"
date: 2015-06-07
category: how-to
tags: [normal]
image: auc-std-normal-curve.png
---

Using R to plot areas under a normal curve.

<!--more-->

![](/images/blog/auc-std-normal-curve.png)

<hr/>

### Motivation

In the previous post, I showed how to plot normal curves in R. Now, it's time to talk about how to plot areas under the normal curve.

To recap, here's the function that allows you to compute the values of the normal function (i.e. the values of the y-axis)

{% highlight r %}
# normal function 
normal <- function(x, mu = 0, sigma = 1) {
  # x: values on x-axis
  # mu: mean value
  # sigma: standard deviation
  
  # output
  1 / (sigma * sqrt(2*pi)) * exp(-0.5 * ((x - mu)/ sigma)^2)
}
{% endhighlight %}

The function `normal()` is just one part of the ingredients. The other major component is the `normal_auc()` function that computes the coordinates to plot the areas (as polygons) under the normal curve.


{% highlight r %}
# polygon coordinates of area under the curve
normal_auc <- function(x0, x1, mu = 0, sigma = 1, n = 50) {
  stopifnot(n > 0)
  if (x0 > x1) {
    stop("x0 must be lower than x1")
  }
  xs <- c(
    rep(x0, n),
    seq(x0, x1, length.out = n),
    rep(x1, n),
    rep(x1, x0, length.out = n)
  )
  ys <- c(
    seq(0, normal(x0, mu = mu, sigma = sigma), length.out = n),
    normal(seq(x0, x1, length.out = n), mu = mu, sigma = sigma),
    seq(0, normal(x1, mu = mu, sigma = sigma), length.out = n),
    rep(0, n)
  )
  list(xs = xs, ys = ys)
}
{% endhighlight %}

The function `normal_auc()` takes five arguments:

- `x0` is the initial point
- `x1` is the end point (`x1` must be greater than `x0`)
- `mu` is the mean
- `sigma` is the standard deviation
- `n` is the number of points generated between `x0` and `x1`


### Example 1: Area to the right


{% highlight r %}
# Area to the right (1 SD above the mean)
x <- seq(-3, 3, length.out = 500)
y <- normal(x, mu = 0)
auc <- normal_auc(1, 3, mu = 0)

op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'n', col = 'gray50', lwd = 4,
     axes = FALSE, xlab = '', ylab = '')
axis(side = 1, at = seq(-3, 3, 1), line = -0.3)
polygon(auc$xs, auc$ys, col = 'orange', border = NA)
lines(x, y, col = 'gray50', lwd = 3)
{% endhighlight %}

![center](/figs/code-2015-06-07-area-under-normal-curve/example1-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}


### Example 2: Area to the left


{% highlight r %}
# Area to the left (1 SD below the mean)
x <- seq(-3, 3, length.out = 500)
y <- normal(x, mu = 0)
auc <- normal_auc(-3, -1, mu = 0)

op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'n', col = 'gray50', lwd = 4,
     axes = FALSE, xlab = '', ylab = '')
axis(side = 1, at = seq(-3, 3, 1), line = -0.3)
polygon(auc$xs, auc$ys, col = 'orange', border = NA)
lines(x, y, col = 'gray50', lwd = 3)
{% endhighlight %}

![center](/figs/code-2015-06-07-area-under-normal-curve/example2-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}


### Example 3: Area in between 


{% highlight r %}
# Area in between 1 SD from the mean
x <- seq(-3, 3, length.out = 500)
y <- normal(x, mu = 0)
auc <- normal_auc(-1, 1, mu = 0)

op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'n', col = 'gray50', lwd = 4,
     axes = FALSE, xlab = '', ylab = '')
axis(side = 1, at = seq(-3, 3, 1), line = -0.3)
polygon(auc$xs, auc$ys, col = 'orange', border = NA)
lines(x, y, col = 'gray50', lwd = 3)
{% endhighlight %}

![center](/figs/code-2015-06-07-area-under-normal-curve/example3-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}


### Example 4: Areas on both sides


{% highlight r %}
# Areas on both sides
x <- seq(-3, 3, length.out = 500)
y <- normal(x, mu = 0)
auc_left <- normal_auc(-3, -1, mu = 0)
auc_right <- normal_auc(1, 3, mu = 0)

op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'n', col = 'gray50', lwd = 4,
     axes = FALSE, xlab = '', ylab = '')
polygon(auc_left$xs, auc_left$ys, col = 'orange', border = NA)
polygon(auc_right$xs, auc_right$ys, col = 'orange', border = NA)
lines(x, y, col = 'gray50', lwd = 3)
axis(side = 1, at = seq(-3, 3, 1), line = -0.3)
{% endhighlight %}

![center](/figs/code-2015-06-07-area-under-normal-curve/example4-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}
