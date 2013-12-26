---
layout: post
title: "Holstee Manifesto"
date: 2013-05-22
categories: opinion
tags: [holstee, manifesto, nantes, plot, text]
---

Last fall (2012) some colleagues contacted me with a very tempting proposition: come to 
France to develop more packages in R. I don't know about you, but I couldn't reject such 
an opportunity fell from heaven. And so I moved to Nantes almost two months ago. 

<!--more-->

As the <a title="holstee" href="http://shop.holstee.com/pages/about" target="_blank">Holstee Manifesto</a> 
says:

> Some opportunities only come once, seize them.

I'm still in the adaptation phase but now that I'm finally settled down, I'm starting to 
have some free time to post again in this blog. For me this feels like a fresh re-start, 
and a good opportunity to thank Mike, Dave, and Fabian for their inspiring manifesto. 
So here it is, a humble plot with part of the Holstee Manifesto.

![](/images/holstee.png)

{% highlight r %}
# holstee manifesto
manifesto = c(
  "This is your LIFE.",
  "Do what you love and do it often.",
  "If you don't like something, change it.",
  "If you don't like your job, quit.",
  "If you don't have enough time, stop watching TV.",
  "If you are looking for the love of your life, stop;
  they will be waiting for you when you start doing things you love.",
  "Stop over analyzing, all emotions are beautiful.",
  "LIFE IS SIMPLE.")
  
# how many sentences?
num_lines = length(manifesto)

# x-y coordinates
x_coords = rep(0, num_lines)
y_coords = seq(num_lines, 1)

# 'cex' size inversely proportional to length of each sentence
sizes = exp(1  - (nchar(manifesto) / max(nchar(manifesto))))

# colors like ggplot 
ggcolors <- function(n, alfa) {
  hues = seq(15, 375, length = n + 1)
  hcl(h = hues, l = 65, c = 100, alpha = alfa)[1:n]
}

# plot
op = par(mar = c(2, 1, 4, 1), bg = "gray20")
plot(x_coords, y_coords, type = "n", xlim = c(0, 100),
     axes = FALSE, xlab = "", ylab = "")
text(x_coords, y_coords, labels = manifesto, adj = 0, xpd = TRUE, 
     family = "serif", col = ggcolors(num_lines, 0.95), cex = sizes)
title("The Holstee Manifesto", col.main = "gray50", cex.main = 2)
par(op)
{% endhighlight %}

There you go. Plot what you love and plot it often... and *bon courage!*