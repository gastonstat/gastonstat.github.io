---
layout: post
title: "How to plot a normal density curve in R"
date: 2015-05-15
category: how-to
tags: [normal]
image: std-normal-curve.png
---

Using R to plot a basic normal curve.

<!--more-->

![](/images/blog/std-normal-curve.png)

<hr/>

### Motivation

For the Statistics introductory courses that I usually teach, I like to produce my onw charts: things like histograms, barcharts, pie-charts, boxplots, stemplots, scatter diagrams, and of course those ever present normal curves. 

R is great for my plotting purposes, but it doesn't really have a dedicated function to plot normal curves. So I decided to create a very simple function to generate the y-values of the normal function:

$$ f(x | \mu, \sigma^2) = \frac{1}{\sigma \sqrt{2 \pi}} e^{-\frac{x - \mu^2}{2 \sigma^2}}$$



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

The function `normal()` takes three arguments: `x` is a numeric vector of values on the x-axis; `mu` is a number for the desired mean; and `sigma` is a number for the standard deviation.

### Example 1

Here's a first example of a stadard normal curve:


{% highlight r %}
# x-y coordinates for Standard normal curve
x <- seq(-4, 4, length.out = 500)
y <- normal(x)

# standard normal curve plot
op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'l', col = '#00ABFF', lwd = 3,
     axes = FALSE, xlab = '', ylab = '')
axis(side = 1, at = seq(-4, 4, by = 1))
{% endhighlight %}

![center](/figs/code-2015-05-15-normal-curve/std_normal_curve-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}


### Example 2

Here's another example of a normal curve with mean = 5 and standard deviation = 1.


{% highlight r %}
# coordinates of a normal distribution (mu = 5, sigma = 1)
x <- seq(2, 8, length.out = 500)
y  <- normal(x, mu = 5)

# normal curve plot
op = par(mar = c(2.5,1,1,1))
plot(x, y, type = 'l', col = '#ff7633', lwd = 4,
     axes = FALSE, xlab = '', ylab = '')
abline(h = 0)
segments(x0 = 5, y0 = 0, x1 = 5, y1 = normal(5, mu = 5), 
         col = 'gray70', lwd = 4, lty = 2)  
axis(side = 1, at = seq(2, 8, 1))
text(x = 5, y = 0.05, labels = "mean = 5")
{% endhighlight %}

![center](/figs/code-2015-05-15-normal-curve/unnamed-chunk-1-1.png) 

{% highlight r %}
par(op)
{% endhighlight %}

There you go, and Happy plotting!
