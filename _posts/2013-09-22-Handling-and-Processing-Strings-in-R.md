---
layout: post
title: Handling and Processing Strings in R
date: 2013-09-22
categories: resources how-to
tags: [book, characters, expressions, handling, strings, regex, regular, text, stringr]
---

<img src="http://farm8.staticflickr.com/7428/11440428013_dd9e6f064d_c.jpg" alt="string_blue">

**Handling and Processing Strings in R** is an ebook dedicated to show you some 
introductory material to manipulate character strings in R.

<!--more-->

[Download ebook](/Handling_and_Processing_Strings_in_R.pdf)</a>



### Why this ebook?

Many years ago I decided to apply for a job in a company that developed data mining 
applications for big retailers. I was invited for an on-site visit and I went through 
the typical series of interviews with the members of the analytics team. Everything was 
going smoothly and I was enjoying all the conversations. Then it came turn to meet the 
computer scientist. After briefly describing his role in the team he started asking me 
a bunch of technical questions and tests. Although I was able to answer those questions 
related with statistics and multivariate analysis, I had a really hard time trying to 
answer a series of questions related with string manipulations. 

I will remember my interview with that guy as one of the most embarrassing moments of my 
life. That day, the first thing I did when I went back home was to open my laptop, launch 
R, and start reproducing the tests I failed to solve. It didn't take me that much to get 
the right answers. Unfortunately, it was too late and the harm was already done. Needless 
to say I wasn't offered the job. That shocking experience showed me that I was not 
prepared for manipulating character strings. I felt so bad that I promised myself to 
learn the basics of strings manipulation and text processing. 
*"Handling and Processing Strings in R"* is one of the derived results of that old promise.

The content of this ebook is the byproduct of my experience working with character 
string data in R. It is based on my notes, scripts, projects, and uncountable days and 
nights in which I've been struggling with text data. Briefly, I've tried to document 
and organize several topics related with manipulating character strings.


### Handling and Processing Strings in R in a nutshell

Although this is not a complete list of the topics covered in the manuscript, here are 
some of the functions that are discussed in the ebook:

#### Basic functions

- ```character()``` creating a character vector
- ```is.character()``` test character mode
- ```as.character()``` convert as character
- ```paste()``` pasting


#### Printing related functions

- ```print()``` generic printing
- ```noquote()``` unquoted characters
- ```cat()``` concatenate and print
- ```format()``` special formats
- ```sprintf()``` C-style string formatting
- ```toString()``` convert to string objects


#### Basic String Manipulations

- ```char()``` count number of characters
- ```tolower()``` convert to lower case
- ```toupper()``` convert to upper case
- ```casefold()``` case folding
- ```chartr()``` character translation
- ```abbreviate()``` abbreviation
- ```substring()``` substrings of a character vector
- ```substr()``` substrings of a character vector


#### String Manipulations with ```stringr```

- ```str_c()``` concatenation
- ```str_length()``` number of characters
- ```str_sub()``` substring
- ```str_dup()``` string duplication
- ```str_pad()``` string padding
- ```str_wrap()``` string wrapping
- ```str_trim()``` trimming whitespaces
- ```word()``` extract words from a sentence


#### Functions for Regular Expressions

- ```grep()```
- ```grepl()```
- ```regexpr()```
- ```gregexpr()```
- ```regexec()```
- ```sub()```
- ```gsub()```
- ```strsplit()```
- ```str_detect()```
- ```str_extract()```
- ```str_extract_all()```
- ```str_match()```
- ```str_match_all()```
- ```str_locate()```
- ```str_locate_all()```
- ```str_replace()```
- ```str_replace_all()```
- ```str_split()```
- ```str_split_fixed()```

