---
layout: post
title: "PNG figures with R for Google Slides"
date: 2015-07-04
category: how-to
tags: [normal]
image: google_slides_icon_dribbble_1x.png
---

In this post I'll describe how to save PNG images in R to be used in your Google Slides and other slideware.

<!--more-->

![](/images/blog/google_slides_icon_dribbble_1x.png)

<hr/>

### Introduction

I make most of my presentations in Google Slides, either for my lectures, tutorials, workshops, talks, and seminars. While it is true that Google Slides reduces reproducibility sustantially, I still prefer the flexibility to position the elements (text, images, objects, etc) wherever I want. 

Often, I like to include plots and graphics (made in R) in my presentations. When using slideware, including images with the right size and resolution can be a pain in the butt. But it doesn't have to be like that, if you know how.


### The Aspect Ratio

The first thing to consider is the aspect ratio of your slides. This is specified in the __page setup__ you are working with. By default, google slides are setup to a Widescreen format with an aspect ratio of __16:9__
![](/images/blog/page-setup-google-slides.png)

But you can always choose a different aspect ratio like the __Standard 4:3__ or the more recent __Widescreen 16:10__.

![](/images/blog/page-size-google-slides.png)

Knowing the aspect ratio of the slides is one part of the process. The other parts have to do with the size of the produced plots and their resolutions.


### Low Resolution

When exporting plots in R via functions like `png()`, `jpeg()`, `tiff()` and `bmp()`,
the images are saved with a default resolution of 72 ppi (points per inch). To be more precise, the R graphic device functions provide a `res` parameter that has a default value of `res = NA`. In addition, there's a parameter `pointsize` that indicates the pointsize of the plotted text interpreted as big points (1/72 inch) at `res` ppi. 

Let's consider a simple scatterplot produced with the following code:

{% highlight r %}
# x-y coordinates
set.seed(98743)
x <- rnorm(10)
y <- x + rnorm(10, 0, 0.5)

# plot
plot(x, y, col = "tomato", pch = 19, las = 1)
{% endhighlight %}

![](/images/blog/scatterplot-google-slides.png)


Say you are using slides with aspect ratio 4:3, and that you want to include the scatterplot in png format. One basic way to do that, using R's default resolution, is to define the dimensions in pixels of the image through the parameters `width = 1024` and `height  = 768` inside the `png()` function:

{% highlight r %}
# export plot to working directory
# (default resolution)
png('plot-1024-768-res72ppi.png', width = 1024, height = 768)
plot(x, y, col = "tomato", pch = 19, las = 1)
dev.off()
{% endhighlight %}

The previous code will produce a png image with the right aspect ratio 4:3; note that the dimensions in pixels hold the desired ratio of 1024:768 = 4:3. However, the image will have a very low (ugly) resolution, and `png()` will use a value of `pointsize = 12`.



### Better Resolution

To increase the resolution of your images, you can increase the `pointsize` value, for instance to 18 or 20. If you inspect the generated plot, its resolution is better but still kind of low.

{% highlight r %}
# export plot to working directory
png('plot-1024-768-ver2.png', width = 1024, height = 768, 
    pointsize = 18)
plot(x, y, col = "tomato", pch = 19, las = 1)
dev.off()
{% endhighlight %}



### High Resolution

The best I way I've found to produce high resolution images, is not with `pointsize` but with the parameter `res`. R graphic device functions provide the parameter `res` which allows you to specify the nominal resolution in ppi. To use it properly, you need to specify the image dimensions `width` and `height` not in pixels but in inches `"in"` via the `units` parameter.

The following code produces a png image with an aspect ratio of 4:3, with dimensions in inches (`units = "in")`, and resolution of `res = 300` ppi:

{% highlight r %}
# export plot to working directory
png('plot-4to3-res300ppi.png', width = 4, height = 3, 
    units = 'in', res = 300)
plot(x, y, col = "tomato", pch = 19, las = 1)
dev.off()
{% endhighlight %}


If you are working with the default ratio of 16:9, then just modify the dimensions correspondingly. If you feel that the size of the dots in the scatterplot is somewhat small, then increase their size with the character expansion parameter `cex`

{% highlight r %}
# export plot to working directory
png('plot-16to9-res300ppi.png', width = 16, height = 9, 
    units = 'in', res = 300)
plot(x, y, col = "tomato", pch = 19, las = 1, cex = 2)
dev.off()
{% endhighlight %}

