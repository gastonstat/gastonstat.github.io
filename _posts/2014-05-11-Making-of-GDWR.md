---
layout: post
title: "The making of GDWR"
date: 2014-05-11
category: resources
tags: [file, read, data]
image: workplace.jpg
---

What is the process I follow to create some of the projects for my website?
This is one of the questions that a couple of my friends recently asked me. I didn't think 
my friends could be interested in how I do the things I do. But after showing them 
all the steps and my working pipeline, I decided that this could be a good topic of discussion 
for a blog post.

<!--more-->

## The Project

In this occasion I will talk about the behind the scenes of my project 
[Getting Data from the Web with R](/work/webdata), which is a collection of slides that 
provide an introduction to the tools we have in R for getting data from the Web. 
I will walk you through my motivations, my workflow, the design issues, and some of the 
challenges I had to face during its production. 

![](/images/blog/workplace.jpg)

<hr/>

### What were my Motivations?

The two most common reasons for me to start a project or begin experimenting are **curiosity** 
and **frustration**. Curiosity drives me into experimenting with new ways of performing some 
task or exploring alternative ways of getting the job done. Frustration, on the other hand, 
pushes me to find an answer for a question or a problem that is driving me nuts.

**Getting data from the Web with R** has a mixed of both curiosity and frustration in its 
roots. I started taking my first steps into web parsing and web scraping about four years 
ago. The more I got involved with analyzing data from the Web, the more I felt curious 
about the tools in R for working with the so-called Web Technologies. Although I was able to 
finish my consulting and research projects, I didn't understand very well the tools that 
I was using. I knew they worked, and that I was able to figure out how to use them. 
But that necessarily didn't mean that I knew how and why they were working. Reading the scarce 
available documentation wasn't helping me a lot. And this is where frustration stepped in. 

A little bit more than a year and a half ago I formally started to write down some notes 
about the R package ```"XML"``` (by Duncan Temple Lang). All I wanted was to make sense 
of all the functions and options for parsing XML and HTML content. The only problem was 
that there was not much available information, at least not in a way that I was able to 
easily understand and digest. Few things can frustrate me more than feeling stupid and 
ignorant about a topic that everyone else seems to find so obvious. 
"Am I the only silly person that doesn't understand how ```"XML"``` works?" This is the type 
of thoughts that take over my head forcing me to find a way to *get the big picture*.

<hr/>

### What are my Working Premises?

Most of my publicly available work is based on a couple of simple premises. If I'm going to put some 
material out there and share it with the rest of the world I want to make it:

- Interesting
- Understandable
- Useful (applicable, actionable)
- Visual
- and Different 

All these conditions imply that I need to take the necessary time until I get a satisfactory 
outcome. I may not always achieve those 5 major requirements, but I 
try to do my best within my limited resources (*eg* time, budget, access to information, etc). 
In the case of [Getting data from the Web with R](/work/webdata) I feel very satisfied. I know it's not 
perfect but you know what they say: "perfect it the enemy of good". 

I think the content is very interesting and helps enriching the resources about working with 
R and Web Technologies. I've tried hard to make the material understandable. This is 
always difficult because I have to make a compromise between quantity and quality. Also, 
the audience may be so diverse that not every reader is going to have the same background 
and experience. One of my secrets is to keep a low ratio of content per slide so the reader 
can digest the chunks of information without being overwhelmed.

The examples might be boring and fairly simple, but I think they are useful. However, 
I can tell you they take a lot of time to prepare. I don't pretend to cover everything, 
and I don't pretend to give a magic recipe that you can apply universally. The idea is to 
show basic real life examples that you can reproduce.

The visual and differentiation aspects are closely related. They are super important to me 
since they allow me to produce original content following my own style. I talk about these 
issues in the next sections. 

<hr/>

### How did I choose the Product Presentation?

Deciding under what shape I should present the content was one of my biggest concerns. 
Should I use slides? Should I write several blog posts? Should I make a github repository? 
Since I wanted to make something that could potentially be used as teaching material, 
I decided that slides were better fitted for this purpose. 

But then I had a 
different type of issue. What type of slides? Google Presentations? Beamer? HTML5? 
At the end I chose beamer (LaTeX) slides. Why? One reason was because I wanted to include 
snippets of R code in a reproducible way. This means Google Presentations and Keynote 
were out of the list. The other reason was to make the content downloadable in pdf format. 
This could also be done with HTML slides but sometimes the pdf output may have slightly 
different appearance from the way they are displayed on the screen. That's why I ended up with beamer.

![](/images/blog/slidedeck.png)

All the content was written using RStudio. I used ```.Rnw``` files and ```"knitr"``` 
to generate the slides. However, I had to make some of the diagrams using Google Presentations, 
export them in pdf, and then include the images in beamer.

<hr/>

### What about the Visual Design?

I also spent some time thinking about the format and visual appearance of the slides. 
When I work with slides I like to have a simple, clean, minimalist layout. Specially 
when I use slides for giving talks, they must be absolutely simple. In this case, 
however, the slides are not for a talked presentation. I'm using the slides more in the 
spirit of handouts and supporting material that you can read and study without my presence.

I'm not a fan of most common beamer themes and layouts. They tend to be very cluttered 
and most of the secondary elements take so much screen space. Not to mention their color palettes 
which I kind of hate.

<img class="centered" src="/images/blog/slide_design.png" width="500px"/>

I struggled to find a nice color palette that I was comfortable working with. 
The solution I found was based on a scheme with 6 colors. I chose 3 color hues, and 3 
neutral colors.

<img class="centered" src="/images/blog/color_palette.png" width="400px"/>

- ```#51c1bc``` for section headers
- ```#e5a919``` to highlight some code or important concepts
- ```#ff8888``` for url links
- ```#f6f4f0``` for the background
- ```#c8c8c8``` for slide headers and secondary information
- ```#646464``` for main text content


<hr/>

### What was my typical workflow?

Regarding the working pipeline, I followed a workflow involving these steps:

- Reading (documents, books, papers, posts, etc)
- Take notes (old style pen and paper) and brainstorm
- Prepare some sketches and drafts
- Work on the R Scripts for the examples
- Put everything together
- Iterate until I feel satisfied

There was a lot of reading and researching behind this project. I checked books  
and a lot of online resources. Basically I worked by topics. I began reading about one 
particular topic, and working through all the mentioned steps. Once I felt I had achieved 
a nice output, I continued with the next topic.

<img class="centered" src="/images/blog/Rbooks.jpg"/>

When creating slides, most people start working directly on their computers, either 
using Power Point, Keynote, Google Presentations, etc. But not me. I need to sit down 
with some pen and paper, write some notes, draw some diagrams, and let my brain flow 
without the constraints imposed by any slide-software. Once I identify the key concepts, 
and how to *tell a story* with the material, I start creating some mockups that will help 
me produce the actual slides in the computer.

<img class="centered" src="/images/blog/slidenotes.jpg"/>

<img class="centered" src="/images/blog/sketches.jpg"/>


<hr/>

### What software and hardware did I use?

Here's the software I used: 

- R
- RStudio
- TextWrangler
- Google Presentations
- Google Chrome
- PDFSplit

And here's the hardware:

- Mead plain writing tablet (100 sheets, 6x9 in)
- Pilot Precise V5 RT pens (black, blue, red)
- MacBook Air
- Dell mouse


<hr/>

### What were some of the challenges and difficulties?

I won't lie to you. Although I enjoyed working on this project, not everyday was fun
and not everything was smooth. Perhaps the main obstacle I face with any of my projects 
is the temptation to quit. Especially when I'm doing it without any sponsorship or 
without the pressure of a job responsibility. 

It is a lot of work. Nobody is asking me to do it. So why I bother? Well, there are 
different reasons. Among the most important ones is that I get to learn new skills. 
Working on projects like this keeps me *in good shape* and allows me to be up to date, 
like any good athlete would train for his/her sport.

Another important reason is sharing my work. Perhaps it will be noticed by just a handful 
of readers, but I don't care. What I care about is on giving something back. 
I have benefited from the work of many people. Like you have done it too. We 
all use, consume and benefit from other people's work. How many times have you googled 
a question just to find the answer in a post? How many times have you looked for information 
about some topic that someone else has written about? So I think sharing my work is the 
least I can do to give something back. There are other major reasons for sharing my work, 
but I'll talk about them in another occasion.


### How much time did it take me?

This project took me about 2 months from beginning to end. Although I must say that it 
was interrupted for about two weeks because of another short time project.

There you go. Now you know a little bit more about what's in the backyard of my projects. 
Of course, each project and experiment are different and they have their own particular 
features. Each of them pose specific challenges and I don't use any shortcuts to complete them. 
Just plain hard work with a good dosis of creativity and imagination.
