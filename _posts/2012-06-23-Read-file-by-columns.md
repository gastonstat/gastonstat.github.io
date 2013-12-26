---
layout: post
title: "4 ways to read a file in R... by columns"
date: 2012-06-23
category: how-to
tags: [file, read, columns]
---

Ever wonder how to read a file in R by columns? This question comes to mind when your 
analysis doesn't require to import all the data in R, especially if the file is huge.

<!--more-->

Sometimes you just want to read some columns, do some data manipulation, and plot some 
graphics. How can you do that in R? I'll show you four different ways to do that without 
having to use a data base management system (DBMS) and SQL queries.


### Toy example

For this post let's consider a toy dataset of 12 rows and 7 columns in csv 
(comma-separated value) format. For instance, a dataset like the following one:

{% highlight r %}
# create toy dataset
dataset = data.frame(
   Id = paste("id", 1:12, sep = ""),
   Name = toupper(letters[1:12]),
   Month = month.name,
   Num = 11:22,
   Qty = sample(0:3, 12, replace = TRUE),
   Val = 10 * runif(12, 0.5, 1),
   Col = colors()[seq(1, 120, 10)]
)

# save data in csv file
write.csv(dataset, "some_file.csv", row.names = FALSE)
{% endhighlight %}

{% highlight text %}
##  Id   Name Month     Num Qty Val      Col
##  id1  A    January   11  1   6.034408 white
##  id2  B    February  12  1   5.242792 aquamarine3
##  id3  C    March     13  3   7.296390 bisque2
##  id4  D    April     14  2   8.792603 blueviolet
##  id5  E    May       15  1   5.161514 burlywood4
##  id6  F    June      16  3   8.153676 chartreuse4
##  id7  G    July      17  0   9.788158 coral4
##  id8  H    August    18  0   7.106729 cyan3
##  id9  I    September 19  0   9.969363 darkgreen
##  id10 J    October   20  2   7.117246 darkorange1
##  id11 K    November  21  2   7.536335 darksalmon
##  id12 L    December  22  1   6.374395 darkslategray3
{% endhighlight %}


### Option 1: cut and system

The first option consists of using a <a href="http://en.wikipedia.org/wiki/Cut_(Unix)" target="_blank">cut</a> 
command with the desired columns, and calling this command within the ```system()``` 
function. The only "problem" is that the data will be stored in a vector. It is not 
the best solution if what you want is a data frame, but it can do the trick if you 
want to quickly inspect the columns.

{% highlight r %}
# collect columns 1, 3 and 7
tmp1 = system("cut -f1,3,7 -d',' some_file.csv", intern = TRUE)

# remove extra quotation marks
tmp1 = gsub("\"", "", tmp1)

# split by commas (this returns a list)
list1 = strsplit(tmp1, ",")
{% endhighlight %}


### Option 2: cut and pipe

The second option is similar to the first one. It consists of calling a ```cut``` 
command but this time from the ```pipe()``` function, which in turn is contained 
inside a ```read.csv()``` function.

{% highlight r %}
# read columns 1 to 3
df2a = read.csv(pipe("cut -f1-3 -d',' some_file.csv"))

# read columns 1, 3 and 7
df2b = read.csv(pipe("cut -f1,3,7 -d',' some_file.csv"))
{% endhighlight %}


### Option 3: package colbycol
The third option consists of using the very handy function ```cbc.read.table()``` that 
comes with the package ```"colbycol"``` (by Carlos Gil)

{% highlight r %}
# remember to install colbycol
require(colbycol)

# read desired columns
tmp3 = cbc.read.table("some_file.csv", just.read = c(1, 3, 7), sep = ",")

# convert to a data.frame
df3 = as.data.frame(tmp3)
{% endhighlight %}


### Option 4: package limma

The last option consists of using the function ```read.columns()``` that comes with 
the ```"limma"``` package (by Gordon Smyth *et al*). Just a small detail: ```"limma"``` 
is in [Bioconductor](http://www.bioconductor.org/packages/2.13/bioc/html/limma.html), 
not in CRAN. In this case, you need to specify the names of the columns to be read.

{% highlight r %}
# install limma from bioconductor
source("http://bioconductor.org/biocLite.R")
biocLite("limma")

# load limma
library(limma)

# read columns 1=Id, 3=Name, and 7=Col
df4 = read.columns("some_file.csv", c("Id", "Name", "Col"), sep = ",")
{% endhighlight %}

Happy data analysis!