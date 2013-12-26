---
layout: post
title: "Workshop on creating R packages in windows"
date: 2013-06-12
categories: opinion resources how-to
tags: [build, create, develop, packages, R, windows, workshop]
---

![](/images/be_creator.png)

This post is dedicated for those **useRs** interested in becoming *creatoRs*, especially 
those working under windows. Here are the slides of my workshop 
<a href="http://www.gastonsanchez.com/teaching/rpackaging" target="_blank">"Create your first R package (in windows)"</a>.

<!--more>

### Becoming a creatoR

Every year more and more R packages are developed and shared among the R community. It 
has been amazing to see the exponential growth of packages contributed to CRAN in the 
last five years (or so). Moreover, the availability of tools for making the developers' 
life easier has been incredible (eg <a href="http://cran.r-project.org/web/packages/devtools/index.html" target="_blank">devtools</a>, 
<a href="http://cran.r-project.org/web/packages/testthat/index.html" target="_blank">testthat</a>, 
<a href="http://cran.r-project.org/web/packages/roxygen2/index.html" target="_blank">roxygen2</a>, 
<a href="http://cran.r-project.org/web/packages/roxygen2/index.html" target="_blank">rd2roxygen</a>, 
<a href="http://cran.r-project.org/web/packages/knitr/index.html" target="_blank">knitr</a>)

With all these <a href="http://r4stats.com/articles/popularity/" target="_blank">trends</a> 
it would be tempting to say that now anybody can quickly switch from being just a 
**useR** to being a **creatoR**. How hard can it be? Well, the truth is that for 
many *useRs*, creating an R package is still a dream. Especially if you have very 
limited programming experience, or if you just have a basic knowledge of R, creating an 
R package on your own can be a truly challenge that will put your patience to the test. 
And on top of that, is even worse if you are working on windows: sooner or later it becomes 
a fu#$ing nightmare.

I learned how to develop R packages on my own. And to be honest, it was a very 
frustrating experience. Moreover, most people I know that have developed R packages, 
have gone through the same burden I went through.  

I still remember my first failed attempts to make an R package and how demoralizing it 
was. I used to think that the only reason why I wasn't able to create an R package was 
simply because I was just a very bad apprentice (i.e. stupid). I don't have any data 
about the number of people that have learned how to create R packages by themselves, 
but I would like to think that we are the big majority.

I know we all can have access to the manual <a href="http://cran.r-project.org/doc/manuals/R-exts.pdf" target="_blank">Writing R Extensions</a> 
(by R Core Team). This manual is the official source of information containing all the 
details on how to create a package in R. By the way, I don't like the name of the manual. 
I would simply call it "Creating R Packages" (but that's a personal opinion). Virtually 
everything you want to know is there. The problem is that, admittedly, the manual is NOT 
beginner friendly whatsoever.

There are many tutorials and documents available online dedicated to show how we can 
create R packages. But since I just recently gave a workshop on this topic, I decided 
to add my two cents. So in this post I'm sharing my slides (and other material) under 
the series: [Create your first R package (in windows)](/teaching/rpackaging). 
Here's the list of discussed topics:

- Introduction
- Part 1: Setting up your PC
- Part 2: Anatomy of an R package
- Part 3: Standard development
- Part 4: Building and Checking
- Part 5: Develop smarter, not harder


The aim of the slide materials is to give you a basic description of the development 
process. I don't pretend to cover everything, just enough so you can have a starting 
point. But hopefully these slides can help you avoid some useless R packaging suffering. 
The goal is to help you make the transition from being just a *useR*, to start 
being a *creatoR*.

![](/images/rpackaging.png)