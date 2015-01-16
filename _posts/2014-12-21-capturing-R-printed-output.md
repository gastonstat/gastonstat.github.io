---
layout: post
title: "Capturing R Printed Outputs"
date: 2014-12-21
category: how-to
tags: [capture]
image: capture_output.png
---

I'm always surprised to find "new" (to me) functions and commands in R that I had no idea they existed. This is the case of the life-saving ```capture.output()``` function.

<!--more-->

![](/images/blog/capture_output.png)


### Motivation

I'm sure you've gone through this situation: you are applying some statistical tests in R, or estimating a model, and you have to use the generated results for either your report, your homework, or your thesis. In other words, your goal is to save the results that appear in your R console into a text file. How you do this without copy-pasting or taking a screenshot?

For one of my projects I was running some anova and t-test. I wanted to capture some of the results, especially the p-values. I managed to do that in a very hacky way. However, I later discovered a very short but life-saving post at 
[Handy R things](http://rstatistics.tumblr.com/post/417394222/export-anova-table).

For illustration purposes I will use a couple of examples in the help documentation from the anova and t-test functions (for more info see ```?aov``` and ```?t.test```).

Here's the anova test example:

{% highlight r %}
# anova test
anova_test = aov(yield ~ block + N * P + K, npk)

anova_test
{% endhighlight %}



{% highlight text %}
## Call:
##    aov(formula = yield ~ block + N * P + K, data = npk)
## 
## Terms:
##                 block     N     P     K   N:P Residuals
## Sum of Squares  343.3 189.3   8.4  95.2  21.3     218.9
## Deg. of Freedom     5     1     1     1     1        14
## 
## Residual standard error: 3.954
## Estimated effects may be unbalanced
{% endhighlight %}


And here's the t-test example:

{% highlight r %}
# t test
t_test = t.test(1:10, y = c(7:20))

t_test
{% endhighlight %}



{% highlight text %}
## 
## 	Welch Two Sample t-test
## 
## data:  1:10 and c(7:20)
## t = -5.435, df = 21.98, p-value = 1.855e-05
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
##  -11.053  -4.947
## sample estimates:
## mean of x mean of y 
##       5.5      13.5
{% endhighlight %}


And now the magic thanks to ```capture.output()```. In this example, I will save the test results in the file ```tests.txt```. By default this file will be created in your working directory but you can specify a different location. 


{% highlight r %}
# Title
cat("Tests Output", file = "tests.txt")
# add 2 newlines
cat("\n\n", file = "tests.txt", append = TRUE)
# export anova test output
cat("Anova Test\n", file = "tests.txt", append = TRUE)
capture.output(anova_test, file = "tests.txt", append = TRUE)
# add 2 newlines
cat("\n\n", file = "tests.txt", append = TRUE)
# export t-test output
cat("T-Test\n", file = "tests.txt", append = TRUE)
capture.output(t_test, file = "tests.txt", append = TRUE)
{% endhighlight %}


This example is a little verbose so you can see what I'm doing, but you can take shorcuts and reduce the number of used commands. Note that the first use of ```cat()``` is just to write a title, and indicate the file name. The rest of the commands require the argument ```append = TRUE``` in order to append the new content to the specified file without overwriting the existing content.

