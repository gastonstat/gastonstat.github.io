---
layout: post
title: "How to read files ... one line at a time"
date: 2012-06-01
category: how-to
tags: [file, read, lines]
---

Imagine that we have a file (.txt, .csv, .dat, etc) and that we need to do some kind of 
process for each line, and then save the results in another file. The only problem is 
that the size of the file is so huge that it is not possible to import it directly to R.

<!--more-->

What can we do? We can simply read line by a line while applying the required operations 
and export the output to another file. Here's how. We need the input file (where the 
data is), and the output file (where the results will be stored). The general idea is to:

1. Read the input file line by line
2. For each line:
    1. Apply operations
    2. Export the outcome to the output file
3. Repeat steps 2.1 and 2.2


### Toy example

Let's say we have an ```input_file``` with a lot of lines. We need to apply some 
function to each line, and then export the outcome to an ```output_file```. Let's 
suppose that the outcome will be stored in a vector of length 6 with the following 
elements: ```Id``` id number, ```Name``` some name, ```Var1-Var3``` are values for three 
variables, ```Status``` some label. Here's one way to do it.

{% highlight r %}
# specify output_file with column names in the first line
cat(c("Id", "Name", "Var1", "Var2", "Var3", "Status"), "\n",
    file = "/path_output_file/output_file")

# define the location of the input file (to be read line by line)
file_con = file("/path_input_file/input_file")

# open connection
open(file_con)

# create a line counter
count_line = 1

# let's process the data
while(length(oneline <- readLines(file_con, n = 1, warn = FALSE)) > 0)
{
    # apply some function
    outcome = myfunction(oneline)
    # print results to output file
    cat(outcome, "\n", file = "/path_output_file/output_file", append = TRUE)
    # increase counter
    count_line = count_line + 1
}

# close the connection
close(file_con)

# how many lines did we read?
count_line
{% endhighlight %}