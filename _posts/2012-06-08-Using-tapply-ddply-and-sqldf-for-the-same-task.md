---
layout: post
title: Using tapply, ddply, and sqldf for the same task
date: 2012-06-08
categories: how-to
tags: [ddply, factor, query, sqldf, tapply]
---

Usually there's more than one way to do things when programming with data. An interesting 
application is when we want to do some calculation on a quantitative variable that is 
associated to a qualitative variable. For instance, you have the prices (quantitative) 
and brands (qualitative) of different products, and you want to get the average price of 
those products by brand. To make things clearer let's generate some imaginary data of 
commercial products:

{% highlight ruby %}
# here's the data
item = toupper(letters[1:15])

set.seed(321)
brand = sample(c("Alpha", "Beta"), length(item), replace=TRUE)
price = round(10 * runif(length(item)), 2)
units = sample(1:3, length(item), replace=TRUE)
some_data = data.frame(item, brand, price, units)
{% endhighlight %}

You should get a table like this one

{% highlight ruby %}
     item   brand   price   units
1       A    Beta    2.02       1
2       B    Beta    6.33       3
3       C   Alpha    4.04       3
4       D   Alpha    2.91       3
5       E   Alpha    6.40       2
6       F   Alpha    6.36       2
7       G   Alpha    9.90       3
8       H   Alpha    9.31       1
9       I   Alpha    4.86       3
10      J    Beta    5.75       2
11      K    Beta    7.51       3
12      L   Alpha    9.93       1
13      M    Beta    4.31       2
14      N   Alpha    1.24       3
15      O    Beta    5.94       3
{% endhighlight %}

How can we obtain the average price by brand? Well, it depends on what do you want to 
use. Here are some options:

- using a ```for``` loop (not recommendable)
- using boolean selection
- using ```tapply()```
- using ```ddply()``` from package ```"plyr"```
- using a sql query (with package ```"sqldf"```)


### Option 1: using a *for loop*

{% highlight ruby %}
# Naive option: don't do this!!!
n_alpha = 0
n_beta = 0
avg_alpha = 0
avg_beta = 0
for (i in 1:nrow(some_data)) {
    if (some_data$brand[i] == "Alpha") {
        avg_alpha = avg_alpha + some_data$price[i]
        n_alpha = n_alpha + 1
    } else {
        avg_beta = avg_beta + some_data$price[i]
        n_beta = n_beta + 1
    }
}
cat("Average Alpha:", avg_alpha / n_alpha,
"\nAverage Beta:", avg_beta / n_beta)
{% endhighlight %}

{% highlight ruby %}
Average Alpha: 6.105556
Average Beta: 5.31
{% endhighlight %}


### Option 2: using *boolean selection*

{% highlight ruby %}
# using boolean selection
with(some_data, mean(price[brand=="Alpha"]))
with(some_data, mean(price[brand=="Beta"]))
{% endhighlight %}

{% highlight ruby %}
6.105556
5.31
{% endhighlight %}


### Option 3: using ```tapply()```

{% highlight ruby %}
# using tapply
with(some_data, tapply(price, brand, mean))
{% endhighlight %}

{% highlight ruby %}
  Alpha Beta
6.105556 5.310000
{% endhighlight %}


### Option 4: using <em>ddply</em></strong>

{% highlight ruby %}
# using ddply
require(plyr)
ddply(some_data, .(brand), summarise, mean_price=mean(price))
{% endhighlight %}

{% highlight ruby %}
  brand mean_price
1 Alpha 6.105556
2 Beta 5.310000
{% endhighlight %}


### Option 5: using an *SQL query*

{% highlight ruby %}
# Using an SQL query
require(sqldf)
sqldf("SELECT brand, AVG(price) AS mean_price FROM some_data GROUP BY brand")
{% endhighlight %}

{% highlight ruby %}
  brand mean_price
1 Alpha 6.105556
2 Beta 5.310000
{% endhighlight %}