---
layout: post
title: "The plspm is dead. Long live the plspm!"
date: 2012-11-14
categories: resources
tags: [pls, plspm, plsdepot, plstroika, partial least squares]
---

<img class="centered" src="/images/blog/pls_modeling.jpg" />

After one month and a half or so of intense work, due diligence, and heavy duty 
maintenance, I finally completed the first phase of my *PLStroika* project. 
As some of you may know, I decided to do a major restructure of my package ```"plspm"```. 
As a result, there are now two more tools related to my <a title="pls modeling" href="http://www.plsmodeling.com" target="_blank">Partial Least Squares</a> 
R packages: ```"plsdepot"``` and ```"pathdiagram"```.

What this means is that:

- ```"plspm"``` is now exclusively dedicated to PLS Path Modeling
- ```"plsdepot"``` shelters the PLS methods for analyzing one or two data tables: 
NIPALS, PLS Regression, SIMPLS, SIMPLS-CA, PLS-CA, and Tucker's Inter-Battery factor 
analysis method.
- there's also ```"pathdiagram"``` which is an experimental package to draw path diagrams in R


### Fiat plspm

I launched ```"plspm"``` in April 2009 when I was about to finish my PhD. Early that 
Spring I had already completed the final draft of my dissertation and I was getting 
closer to the "final laps" of my doctoral race. Everything was going smoothly and 
according to my scheduled plans, but I felt that something crucial was missing. If I 
wanted to get inner peace I knew that I needed to put all my R scripts for PLS in a 
package format. As a matter of fact, that was one of the goals when I started my 
research project. The only problem was that all my previous attempts to create an R 
package had ended up in the trash can of my computer. But then, following a hunch 
during the spring break of 2009, I sat down and I decided to give it one last try... 
finally I made it.


### Fast forward to 2012

Over the last three years since I launched ```"plspm"```, I've gained a broader 
perspective about R, PLS, and many other stuff. One lesson is that creating an R package 
is just half of the way. And in some sense it may not even be the half, it's just the 
beginning. 

Once you launched a library, there's an implicit &mdash;I would say **latent**&mdash; 
contract in which you commit to maintain it and keep it alive. And this dear friends, 
maintaining a package, can be much, much, much harder than you think... especially when 
you have to do other things. You can be working in other projects, change careers, 
become a husband, become a parent, be travelling, etc. You are not dedicating all your 
time to take care of your packages, kill the bugs, implement new functions or add more 
cool features. And in top of all of that, you are basically doing it for the sake of it; 
you are doing it for free, you are doing it for no material reward... Particularly in my 
case, I do it because I like it, because I want to add my two cents to the PLS community, 
and to share my work with the rest of the world.

Also in these years, I realized that every updated version of ```"plspm"``` required me 
to do a lot of painstaking, time consuming, boring work with its corresponding stress 
toll. This of course was not fun whatsoever, and to some extent it even discouraged me 
to do further changes. But then again I had a revelation and I noticed that one of the 
causes for the maintenance burden was to have oranges and apples in the same container. 

After some thought, I chose an unorthodox but practical remedy: put each type of fruit 
in its own container. In other words, having PLS path modeling methods in one package, 
while having PLS methods for one or two blocks of variables in another package 
(```"plsdepot"```).


### R package ```"pathdiagram"```

Along my *PLStroika* endeavor, a third package was developed: ```"pathdiagram"```. 
This is more of a side effect rather than a conscious and predetermined development. 
As I was writing the documentation for ```"plspm"```, I realized that I badly needed 
a way to plot path diagrams in R. I used Yihui's ```"knitr"``` package for generating 
the accompanying pdf's with the documentation. It's a great option and makes it easy 
to generate the reports. Of course, I had to struggle a lot with it in the beginning 
trying to figure out how to get the job done. But once I got the basics, the rest was 
a joyride. Now the documentation is entirely reproducible and I don't need to do 
error-prone copy-pastyings anymore.

I spent some time looking for options to plot path diagrams with the ```"grid"``` package. 
I managed to plot some decent diagrams but the problem was that I didn't have a complete 
control over the formatting of text, and the format of the rectangles and ellipses. So 
I went to experiment with my own functions. At the end I came up with ```"pathdiagram"```. 
Its only purpose is to help me plot diagrams in R for my reports and docs. But who knows, 
maybe there might be more people interested in doing the same. 

You can perfectly argue that I lost my time reinventing the wheel. Anyone can draw a 
diagram using some software for presentations, save the image, and then import it into 
the latex document. But that's my point: I didn't want to rely on external software 
rather than R. Since I was using ```"knitr"```, my only option was to generate my 
diagrams in R and put them in my docs.


### PLS Modeling

As a collateral damage, my web site dedicated to PLS (<a title="pls modeling" href="http://www.plsmodeling.com" target="_blank">plsmodeling.com</a>) 
also suffered from the *PLStroika*. Following a minimalist keep-it-simple approach, I 
got rid of non essential things, and I tried to leave it with just the useful content. 
I'm still working on it but I hope to finish it in the next weeks.

I know that all these changes may potentially affect the work of some colleagues, 
analysts and students (hopefully not that many). I don't have any intentions to cause 
harm. On the contrary, if I revamped my pls packages is to keep them alive, in good 
shape, in good care, so we all enjoy them for many more years.