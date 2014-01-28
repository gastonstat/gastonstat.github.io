---
layout: post
title: "Literate Testing in R"
date: 2013-10-26
categories: opinion resources
tags: [literate, objects, package, programming, tester, testing, validation]
image: literate_testing_really.png
---

This past summer I attended the French R meeting in Lyon. But that's secondary for this 
story. The important part happened while I was on the train on my way to Lyon.

<!--more-->

<img class="centered" src="/images/literate_testing.png">

As I was reviewing a couple of my functions, I noticed that I was getting sick. Not from 
motion sickness but from the way I was validating the arguments of the functions. One of 
the functions required a positive integer as an input. 

R has the function ```is.integer(x)``` to check if ```x``` is an integer. The problem is 
that if you type ```is.integer(1)``` you would get ```FALSE``` as an answer. The reason 
is because 1 is not stored as an integer in R, but as a double. If you want an integer 
then you should use 1L. Now, if you type ```is.integer(1L)``` the answer is ```TRUE```. 
So, what does this have to do with my story? Well, if I want to validate whether a given 
object ```x``` is a positive integer, I could write the following line:

{% highlight r %}
# check if x is a positive integer
if (mode(x) == "numeric" && x > 0 && x %% 1 == 0) TRUE else FALSE
{% endhighlight %}

What if I could simply write something like this:
{% highlight ruby %}
# test if x is a positive integer
is_positive_integer(x)
{% endhighlight %}

Isn't this much better and simpler, not to mention more understandable? Hell yes! So why 
not to have more functions like ```is_positive_integer(x)``` to test specific features 
of some common R objects? 

<img class="centered" src="/images/literate_testing_really.png">

I spent the rest of my ride to Lyon, and the next couple of days creating 
<a href="http://cran.r-project.org/web/packages/tester/index.html" target="_blank">tester</a>, 
an R package that provides a wide range of functions that will allow you to test 
characteristics of common R objects ... in a more human readable way following the so 
called <a href="http://literateprogramming.com/knuthweb.pdf" target="_blank">Literate Programming</a> 
paradigm of Donald Knuth.


To give you a better idea of ```tester```, here are some of the functions that you can 
find to make your life easier when testing the behavior of different R objects. The main 
goal is to provide tools for checking arguments of functions in a more human readable way.

### Testing numbers

Some of the functions related to different types of numbers:

- ```is_positive()``` 
- ```is_negative()``` 
- ```is_integer()``` 
- ```is_natural()``` 
- ```is_odd()``` 
- ```is_even()``` 
- ```is_decimal()``` 
- ```is_scalar()```


### Testing vectors
Some of the functions related to vectors:

- ```is_vector()``` 
- ```is_numeric_vector()``` 
- ```is_string_vector()``` 
- ```is_logical_vector()``` 
- ```is_not_vector()``` 


### Testing matrices
Some of the functions related to matrices:

- ```is_matrix()``` is a matrix
- ```is_numeric_matrix()``` is a numeric matrix
- ```is_string_matrix()``` is a character matrix
- ```is_logical_matrix()``` is a logical matrix
- ```is_not_matrix()``` is not a matrix
- ```is_square_matrix()``` is a square matrix
- ```is_diagonal()``` is a diagonal matrix
- ```is_triangular()``` is a triangular matrix

### Testing data frames

Some of the functions related to data frames:

- ```is_dataframe()``` 
- ```is_numeric_dataframe()``` (is a numeric data frame)
- ```is_string_dataframe()``` (is a character data frame)
- ```is_not_dataframe()``` 


### Testing matrices and data frames

Some of the functions related to both matrices and data frames:

- ```is_tabular()``` (is a matrix or data frame)
- ```is_not_tabular()``` (is not matrix neither a data frame)
- ```has_dimension()``` 
- ```lacks_dimension()``` 
- ```is_one_dim()``` 
- ```has_rownames()``` 
- ```lacks_rownames()``` 
- ```has_colnames()``` 
- ```lacks_colnames()``` 

### In summary

As you can tell, ```tester``` offers you several functions with simple memorable names 
that are easy for us (human beings) to understand what the computer is doing. If you are 
interested in the package, let me tell you that there are many more functions, and you 
can also find an introductory 
<a href="http://cran.r-project.org/web/packages/tester/vignettes/tester_introduction.pdf" target="_blank">vignette</a>.


> Let us change our traditional attitude to the construction of programs: Instead of 
> imaging that our main task is to instruct a computer what to do, let us concentrate 
> rather on explaining to **human beings** what we want a computer to do.
>
> Donald Knuth, 
<a href="http://literateprogramming.com/knuthweb.pdf" target="_blank">Literate Programming</a> 
