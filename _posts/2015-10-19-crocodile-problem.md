---
layout: post
title: "Solving the Crocodile Math Problem in R"
date: 2015-10-19
category: how-to
tags: [crocodile]
image: crocodile-zebra.png
---

Using R to solve the [crocodile math problem]() from the Scottish __Higher Maths__ exam of May 2015.

<!--more-->

![](/images/blog/crocodile-zebra.png)

<hr/>

### Motivation

Reading the Spanish newspaper [La Vanguardia](http://www.lavanguardia.com/vida/20151019/54437267761/enigma-cocodrilo-cebra-estudiantes-escoceses.html), I found a curious article about a math problem that S4 Scottish students (the equivalent of high school's senior year) struggled with last May on their [SQA Higher Maths test](http://www.sqa.org.uk/pastpapers/papers/papers/2015/NH_Mathematics_all_2015.pdf).

Here's the problem. 

![](/images/blog/crocodile-problem.png)


### Getting Started

The first thing to do is write a function containing the formula of \\( T(x) \\) the time taken for the crocodile to reach its prey:


{% highlight r %}
# time taken function
croctime <- function(x) 5 * sqrt(36 + x^2) + 4 * (20 - x)
{% endhighlight %}

Now let's look at this function. I'll choose an interval of (0, 20) for \\( x \\) since this represents the distance (0 meters, 20 meters).

{% highlight r %}
curve(croctime, 0, 20, las = 1, lwd = 5, col = "#68A959",
      xlab = "distance", ylab = "time")
{% endhighlight %}

![center](/figs/2015-10-19-crocodile-problem/croctime-1.png) 


### First question 

_Calculate the time taken if the crocodile does not travel on land._ That means that the crocodile swims the entire 20 meters.

{% highlight r %}
croctime(20)
{% endhighlight %}



{% highlight text %}
## [1] 104.4031
{% endhighlight %}

### Second question

_Calculate the time taken if the crocodile swims the shortest distance possible._ Personally I think that this question is poorly written and/or bad designed. What does the "shortest distance possible" mean? Assuming that the shortest distance possible is 0 meters, then the time taken to swim 0 meters is:

{% highlight r %}
croctime(0)
{% endhighlight %}



{% highlight text %}
## [1] 110
{% endhighlight %}


### Third question

_Between these two extremes there is one value of \\( x \\) which minimizes the time taken. Find this value of \\( x \\) and hence calculate the minimum possible time._  This is a typical calculus problem of minimizing a function. In this case the function to be minimized is the time taken. This implies calculating the derivative of \\( T(x) \\).

We can use the function `deriv()` to compute the derivative of a simple expression (symbolically). 

{% highlight r %}
# derivative of T(x)
deriv(y ~ 5 * sqrt(36 + x^2) + 4*(20 - x), "x")
{% endhighlight %}



{% highlight text %}
## expression({
##     .expr2 <- 36 + x^2
##     .value <- 5 * sqrt(.expr2) + 4 * (20 - x)
##     .grad <- array(0, c(length(.value), 1L), list(NULL, c("x")))
##     .grad[, "x"] <- 5 * (0.5 * (2 * x * .expr2^-0.5)) - 4
##     attr(.value, "gradient") <- .grad
##     .value
## })
{% endhighlight %}

As you can tell from the output of `deriv()`, the fifth line contains the desired derivative:
`.grad[, "x"] <- 5 * (0.5 * (2 * x * .expr2^-0.5)) - 4`

We can also obtain this derivative by using the function `D()` and pass it the body of the function `croctime()` like so:

{% highlight r %}
g <- function(x) {}
body(g) <- D(body(croctime), 'x')

body(g)
{% endhighlight %}



{% highlight text %}
## 5 * (0.5 * (2 * x * (36 + x^2)^-0.5)) - 4
{% endhighlight %}

Looking at the graphic of time, the curve has a minimum somewhere between 7 meters and 10 meters. We can evaluate the derivative `g()` with some `x` values to try to narrow down our search for the minimum value. 

{% highlight r %}
# distance values
seq(7, 10, length.out = 10)
{% endhighlight %}



{% highlight text %}
##  [1]  7.000000  7.333333  7.666667  8.000000  8.333333  8.666667  9.000000
##  [8]  9.333333  9.666667 10.000000
{% endhighlight %}



{% highlight r %}
# evaluating derivative
g(seq(7, 10, length.out = 10))
{% endhighlight %}



{% highlight text %}
##  [1] -0.20371699 -0.13021350 -0.06247499  0.00000000  0.05767171
##  [6]  0.11096096  0.16025147  0.20589238  0.24820083  0.28746463
{% endhighlight %}

Aha! the minimum value is at a distance of 8 meters! To confirm that 8 is actually the root of the polynomial, we can use the function `multiroot()` from the package `"rootSolve"` by [Karline Soetaert](https://www.nioz.nl/staff-detail?id=784400)


{% highlight r %}
library(rootSolve)

multiroot(g, c(7, 10))
{% endhighlight %}



{% highlight text %}
## $root
## [1] 8 8
## 
## $f.root
## [1]  8.881784e-16 -3.693739e-10
## 
## $iter
## [1] 5
## 
## $estim.precis
## [1] 1.846874e-10
{% endhighlight %}

There you go: the minimum taken time for the crocodile to catch the zebra is given when the crocodile swims 8 meters, and then walks the other 12 meters. 

