---
layout: post
title: "Creating HTML5 slides with RStudio, knitr and pandoc"
date: 2012-11-19
category: how-to
tags: [html5, slides, knitr, pandoc]
---

Lately I've been spending some time learning how to create slides using HTML5. The good 
news for R users is that we can generate our html5 slides with [R studio](http://www.rstudio.com/ide/), 
[knitr](http://yihui.name/knitr/), and [pandoc](http://johnmacfarlane.net/pandoc/). The 
not so good news is that, as usual, the learning curve can be relatively steep for 
newbies, inexperienced users, or html5 illiterate guys like me.

<!--more-->

The main source of information is [Yihui Xie's knitr](http://yihui.name/knitr) website 
which is full of information and [demos](http://yihui.name/knitr/demos). It's really 
amazing the contribution that Xie has done and I admire his awesome work. However, 
although there's plenty of information in the knitr's website, I wasn't able to find a 
tutorial on how to create html5 slides in a relatively easy beginners-style way. 
So I decided to create a short tutorial that hopefully will help you to get a better 
idea on how to create your own slides.

<iframe src="https://docs.google.com/presentation/d/19CKL5gMWpjcXPVGNxS38qAOjFxdrd3TA0s9DEyvgS3A/embed?start=false&loop=false&delayms=3000" frameborder="0" width="700" height="554" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>


### A little bit about HTML5 slides

HTML5 slides is just another tool that you can use for creating slides instead of using 
Keynote, PowerPoint, Google Presentation, etc. If you haven't seen html5 slides before, 
just take a look at these examples:

- [http://yihui.name/slides/knitr-slides.html](http://yihui.name/slides/knitr-slides.html)
- [http://yihui.name/slides/2012-knitr-RStudio.html](http://yihui.name/slides/2012-knitr-RStudio.html)
- [http://yihui.name/slides/2011-r-dev-lessons.html#slide1](http://yihui.name/slides/2011-r-dev-lessons.html#slide1)

Personally, I see HTML5 slides as another useful resource that I can use for my work. I 
don't think it will substitute my use of other slideware, but it can definitely be used 
as an interesting alternative. Especially if you are interested in reproducible documents 
containing chunks of R code and graphics, it's worthwhile to try it.

Among the pros of using html5 slides is that you just need a text editor and a web 
browser (but not necessarily an internet connection). It also offers an interesting 
format that, if well designed, can provide a different and better visual experience. 
However, HTML5 slides are not without limitations. Perhaps the main entrance barrier 
for many users is that you require web coding skills (HTML, CSS, JavaScript). You don't 
have to be an expert with these languages but you definitely need to have the basics to 
get the most out of the slides. On the formatting side, my main complain has to do with 
positioning the elements which is very limited.

Some other general resources about HTML5 slides and HTML5 frameworks (that you can use 
out of the box)

- [http://www.html5rocks.com/en/slides](http://www.html5rocks.com/en/slides)
- [http://paulrouget.com/dzslides/](http://paulrouget.com/dzslides/)
- [https://code.google.com/p/html5slides](https://code.google.com/p/html5slides/)
- [http://pepelsbey.github.com/shower/en.htm](http://pepelsbey.github.com/shower/en.htm)
