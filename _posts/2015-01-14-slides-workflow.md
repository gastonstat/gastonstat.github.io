---
layout: post
title: "The Making of Manipulating Data Tables"
date: 2015-01-14
category: opinion
tags: [slides]
image: slide_deck.png
---

After receiving some emails commenting on my work and asking information about it, 
I want to talk about the behind the scenes of **Manipulating Data Tables in R**.

<!--more-->

![](/images/blog/slide_deck.png)

<hr/>


From time to time I receive emails from readers thanking me for sharing my stuff, and 
commenting on the material in my website and blog. Very recently I received an 
email from Jason Aizkalns. He wrote to me asking 
some questions about my slides [Manipulating Data Tables in R](http://gastonsanchez.com/teaching/). 
I promised to answer him by writing a public response in the form of a post 
(possibly two), so other readers could benefit from it. In this post I will 
answer these questions:

1. What did you use to create this?
2. Do you leverage templates?
3. How do you accomplish the nice highlighting? 
4. All those neat diagrams of data tables and their color coding?

<hr/>


### What did I use to create the slides?

I used [google slides](http://www.google.com/slides/about/) to produce the material 
for the workshop about data tables in R. Since I wanted to have total freedom and 
flexibility about the position of the elements in the slides, I chose to stay 
with regular slideware. 

Why google slides in particular? The reason to use 
google slides and not keynote or power point or libre office has to do with organization and 
sharing issues. On the one hand I use google drive a lot, mainly because is free, 
but also because I can have access to my files from any computer (as long as 
there is a good internet connection). On the other hand, I can share slides 
on the web thanks to the option google offers by publishing a file to the web. In 
that way, any change I make to a file, it gets automatically updated on the web. 

Furthermore, I like that the slides are publicly visible, but not necessarily 
downloadable. I don't mind people stealing ideas from my materials or getting 
inspiration from my slides. I even use creative commons license so other people 
can build on top of my work as long as they share it for free and give proper credit. 
What I don't want is someone downloading the original file and changing it 
without doing any effort.


### Do I leverage templates?

I have a handful of basic templates that I use as my main stock. So yes, I do 
leverage templates. With a couple of simple layouts I can start adding things, 
changing colors, modify elements, and so on. In general they are very simple. 
I tend to prefer white background 
but I'm open to use other colors as long as the entire format is clean and minimalist.


### How do I accomplish the highlighting? Is it manual work?

In case of google slides, I must admit that there is a lot of manual work, or 
if you prefer, *hard coded formatting* and copy-pasting. I know this is not the 
ideal situation, at least compared to html5 or beamer slides. The trick is to 
have a style guide or wireframe defining the structure and format of the slide decks. 

**Style Guide.** Every one of my projects is accompanied by a style guide. I have a separate file with 
fake material (think of [lorem ipsum](http://en.wikipedia.org/wiki/Lorem_ipsum)). 
The idea is to have a couple of master slides with the desired format. This template 
defines all the visual appearance (font, size, color, spacing, etc.) of elements such as:

- title
- subtitle
- paragraph
- lists and bullets
- quotation
- tables
- code snippets

**Color Palette.** I also like to determine a color palette from the beginning. 
I prefer triadic schemes, 
but you can use complementary schemes, or any other scheme of your preference. 
I also choose two neutral colors. Now I tend to be more careful and keep in mind 
that there may be color-blind people in the audience. The image below shows some 
of the colors I initially considered for **Getting Data from the Web with R**.

![](/images/blog/slide_palette.png)

In order to complete a color palette I consider two color hues for the following 
purposes: highlighting and lowlighting. I use a color to highlight things like 
key terms or special programming commands. I also use a color to lowlight or 
distinguish text from a paragraph; usually for things inside parentheses or any 
information that, although important, receives a low hierarchy connotation. Besides 
these two colors, I typically have a third hue to indicate online references 
(i.e. URL link color) 

I find it extremely useful to know a little bit about color theory as well as a basic understanding 
of psychology of colors. How colors influence our mood? How colors can be linked to emotions? 
This translates into various considerations: Do I want my slides to look serious 
and very formal, or do I want them to have an informal and fresh air?
Do I want to transmit a feeling of enthusiasm? Or do I want to be perceived as 
boring and old fashion?

**Visual Perception.** Also very, very important and helpful is to know about 
principles of visual perception. Steven Bradley has written a short tutorial on 
[principles of Gestalt](http://www.smashingmagazine.com/2014/03/28/design-principles-visual-perception-and-the-principles-of-gestalt/). Knowing how our eyes work, how our brain processess visual information, 
what things capture our attention, and what can we do to direct our eyes, will help you 
a lot to design better schemes, diagrams, and graphics. 

![](/images/blog/neat_highlight.png)



### Low Content Ratio

Another one of my guiding principles is to create slides with a low content ratio. 
By this I mean having slides that transmit one or two key ideas. In other words, 
I design slides so that each one of them is visually digestible in an easy way. 
I just don't want slides that overwhelm your eyes and brain. 

I don't mind breaking the content of one slide into two, three, four, or more slides. 
This is something that most people don't do, unfortunately. Let me put it this way: 
It's not about the number of slides; it's about the ratio of content and white space in a slide. 
I've given talks of 45 minutes with more than 200 slides, so I know the number of 
slides is not a problem. By keeping relatively simple slides, you don't have to 
spend a minute or two talking about each slide. Instead, you can easily navigate 
through four or five slides in 30 seconds. 

The truth is that you will benefit incredibly by studying, reading, and learning 
from authors and experts in fields of information design, communication, graphic 
design. If you really want to know how I've developed my "secret sauce recipe", 
just search for any of the books in the photo below (part of my personal library about 
information design in general). 

![](/images/blog/design_books.jpg)


- **slide:ology: The Art and Science of Creating Great Presentations** (by Nancy Duarte)
- **Resonate: Present Visual Stories that Transform Audiences** (by Nancy Duarte)
- **Presentation Zen Design** (by Garr Reynolds)
- **Presentation Zen: Simple Ideas on Presentation Design and Delivery** (by Garr Reynolds)
- **100 Things Every Presenter Needs to Know About People** (by Susan Weinschenk)
- **Universal Principles of Design** (by William Lidwell, Kritina Holden, and Jill Butler)
- **The Practical Guide to Information Design** (by Ronnie Lipton)
- **Layout Essentials: 100 Design Principles for Using Grids** (by by Beth Tondreau)
- **Design Elements: A Graphic Style Manual** (by Timothy Samara)
- **Information Design Workbook** (by Kim Baer)
- **White Space Is Not Your Enemy** (by Rebecca Hagen and Kim Golombisky)
- **Don't Make Me Think** (by Steve Krug)

**A Friendly Reminder.** And talking about books, let me advertise my amazon [wishing list](http://amzn.com/w/A8P707HJ94QI). 
If you have benefited from my hard work, I would enormously appreciate if you could 
give something back by helping me get valuable books and ebooks.