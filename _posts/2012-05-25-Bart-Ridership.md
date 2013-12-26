---
layout: post
title:  Bart Ridership
date:   2012-05-25
categories: [crunching-data, how-to, visualization]
tags: [bart, fares, graph, ridership, ggmap, openstreetmap]
---

<img class="centered" title="Bart_ggmap_openstreetmap" 
src="/images/bart_ggmap_openstreetmap.png" alt="Bart ggmap openstreetmap" width="580" height="520" />

Ever wonder how many people exit at BART stations on a typical weekday? You can check 
the numbers in the <a title="bart reports" href="http://www.bart.gov/about/reports/index.aspx" 
target="_blank">BART reports page</a> where there are a lot of data files to play with. 

<!--more-->

As part of the <a title="bart riderships" href="https://docs.google.com/presentation/d/1B9tFbVbN3LleTd_nVkqq24RUL9oPAeo7w3vQ3PcMZYw/pub?start=false&amp;loop=false&amp;delayms=3000" target="_blank">visualization of BART ridership</a>, 
I created this graphic with the help of the R package 
<a title="ggmap" href="http://cran.r-project.org/web/packages/ggmap/index.html" target="_blank">ggmap</a> and 
its useful functions to get maps from 
<a title="openstreetmap" href="http://www.openstreetmap.org/" target="_blank">openstreetmap</a> 
(and from other options like google maps). The average number of people exiting most 
BART stations on a typical weekday is around 5000. 
However, numbers rocket sky in the stations located on Market street (San Francisco): 
Embarcadero, Montgomery, and Powell. Just look at the big red circles on the map; 
that's where riders concentrate.

<iframe src="https://docs.google.com/presentation/d/1B9tFbVbN3LleTd_nVkqq24RUL9oPAeo7w3vQ3PcMZYw/embed?start=false&loop=false&delayms=3000" frameborder="0" width="700" height="554" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>