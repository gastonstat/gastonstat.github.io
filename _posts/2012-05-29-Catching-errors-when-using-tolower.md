---
layout: post
title: "Catching errors when using tolower"
date: 2012-05-29
categories: how-to
tags: [error, exception, handling, text, tolower, trycatch]
---

When I'm working in [R](http://www.r-project.org/) with text data parsed from online 
opinion forums and social webs (e.g. twitter), I need to do some cleaning and 
pre-processing such as removing punctuation marks, striping extra white spaces, or 
converting text to lower case. 

<!--more-->

More often than not, when using the ```tolower()``` 
function I encounter myself with a really annoying error that is a truly pain in the butt.

Consider the following example. Let's say we have the text from a tweet in an object 
called ```some_text```. When we print the object in the console, we get a warning message 
(in red) like this:
So, how can we solve this error? Meet the <a href="http://stat.ethz.ch/R-manual/R-devel/library/base/html/conditions.html" target="_blank">tryCatch</a> 
function! This function will help us to catch possible errors. We'll make a new function 
combining ```tryCatch()``` and ```tolower()``` so we can identify any undesirable text 
without returning any ugly message and without stopping our programs. 

Here's my ```tryTolower()``` function

{% highlight r %}
tryTolower = function(x)
{
   # create missing value
   # this is where the returned value will be
   y = NA
   # tryCatch error
   try_error = tryCatch(tolower(x), error = function(e) e)
   # if not an error
   if (!inherits(try_error, "error"))
      y = tolower(x)
   return(y)
}
{% endhighlight %}


### Let's test it

Suppose you have a character vector with five elements

{% highlight r %}
# vector with text
text_vector = c(
  "Motivation, philosophy and technique in activism. #Assange and #Occupy: http://t.co/89PFkyjh via @RT_com",
  "No work today, slept through the classes I wanted at the gym. Now I need to find something to occupy my time \ud83d\udc4d\ud83d\ude09",
  "RT @jdavis4100: The Spirit of God and fear never occupy the same space. The presence of one automatically implies the absence of the other...",
  "Police given powers to enter homes http://t.co/VXmtfPV5 and tear down anti- #Olympics posters during Games #Occupy #Anonymous #wakeup #fb",
  "RT @OccupyWallSt: RT @WSOASP12: I quit my job to join the occupy movement. Time to stand up and speak out, I'm not here to make another man rich @Occupy #OWS")

# apply tolower (you should get an error message)
tolower(text_vector)

# now apply tryTolower with sapply
# (you should get a missing value when tryTolower finds an error) 
sapply(text_vector, function(x) tryTolower(x))
{% endhighlight %}
