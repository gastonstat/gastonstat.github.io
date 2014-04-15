---
layout: flexible
title: Arc Diagrams
---

<div id="block">
	<div class="wide-image">
		<a href="star_wars_final_arc_diagram.pdf">
		<img class="full" src="/images/website/fullwidth_arcdiagram.png" alt="workstation" />
		</a>
	</div>
</div>


<div id="block">
	<div class="prose"> 
		<h2>Star Wars Arc Diagram</h2>
		<p>
		Inspired by the <a href="http://similardiversity.net/" target="_blank">Similar Diversity</a> arc 
		diagram (by Philipp Steinweber and Andreas Koller) I created my own version with 
		the 20 most talkative characters from the original Star Wars trilogy.
		</p>
		<p> 
		The characters are aligned alphabetically on the x-axis. The size of the names are calculated from 
		the number of dialogues (the more dialogues, the bigger the name). The size of the arcs 
		reflect the association between any two characters. The more words in common between 
		two characters, the strong their association, and the wider and darker the corresponding arc.
		</p>
		<p>
		The colored segments of the circular bands show the frequency of a character dialogues 
		in the different episodes. The barcharts below the names contain the most frequent words 
		mentioned by each character.
		</p>
		<p><a class="redbutton" href="http://bit.ly/1fwuuTo">See Slides</a></p>
		<br/>
		
		<h3>About this project</h3>
		<hr class="margin" />
		<p>
		I was so impressed and fascinated with the Similar Diversity arc diagram, that 
		every time I saw it I ended up with the same thoughts: 
		<ol>
		  <li><i>OMG!</i></li>
		  <li><i>How the hell did they do it?</i></li>
		  <li><i>I wish I could plot something like that</i></li>
		</ol>
		Until one day I decided to actually try to create my own arc diagram. 
		I challenged myself to see whether I was able to emulate Andreas and Philipp's 
		awesome work with one single condition: <b>everything had to be done in R</b>. 
		</p>

		<h3>How much time did it take?</h3>
		<hr class="margin" />
		<p>
		This project took me a couple of months, mainly because it was a side project and 
		I was working on it only in my scarce free time. In other words: I worked one hour 
		one day. Then maybe 2 hours the next day. Then stop for 2 days. Continue 5 
		hours the following week, and so on. As 97.837% of any data analysis project, this 
		project required a lot iterations, time-consuming data wrangling operations, 
		moments of frustration, moments of desperation, exploring multiple dead-end roads, 
		and of course, hundreds of trial-and-error plots until achieving a satisfactory 
		visualization.
		</p>

		
		<h3>What data I used?</h3>
		<hr class="margin" />
		<p>
		For this project, I was able to find the movie scripts of the original Star Wars 
		trilogy (episodes IV, V, and VI). The original websites where I found the scripts 
		are no longer active, but you can find equivalent content in the following links: 
		<ul>
		  <li><a href="http://www.imsdb.com/scripts/Star-Wars-A-New-Hope.html" target="_blank">http://www.imsdb.com/scripts/Star-Wars-A-New-Hope.html</a></li>
		  <li><a href="http://www.imsdb.com/scripts/Star-Wars-The-Empire-Strikes-Back.html" target="_blank">http://www.imsdb.com/scripts/Star-Wars-The-Empire-Strikes-Back.html</a></li>
		  <li><a href="http://www.imsdb.com/scripts/Star-Wars-Return-of-the-Jedi.html" target="_blank">http://www.imsdb.com/scripts/Star-Wars-Return-of-the-Jedi.html</a></li>
		</ul>
		</p>
		
		<h3>Creative-and-Analytic Process</h3>
		<hr class="margin" />
		<p>
		I broke down the Similar Diversity arc diagram into what I considered their basic 
		graphical components: the nodes, the edges as arcs, the circular bands, and the barcharts. 
		Broadly speaking, I tried to reversed-engineer the Similar Diversity visualization 
		with my own interpretation and configuration of graphical elements.
		</p>
		<p>
		The main creative part, in my opinion, was to think about the graphical display of 
		a graph in terms of an arc diagram. This was the first key condition for me: to 
		find a way to plot a graph as an arc diagram.
		</p>
		<p>
		In general terms, the entire analytic process involved three major parts: 1) the parsing, 
		processing, and text reshaping; 2) the text data analysis and mining; and 3) the 
		graphical visualization part. 
		</p>

		<h3>Plotting Arcs</h3>
		<hr class="margin" />
		<p>I started with the question: <b>Given a graph (i.e. a network) how can I plot it 
		in arc-diagram format?</b>. The solution I found was to map the nodes on a horizontal 
		axis, and positioning them at equal-distance intervals. Then, for any two connected 
		nodes, an arc is drawn as the circumference of a half-circle. Derived from this work, 
		I created the R package <code>arcdiagram</code> available on 
		<a href="https://github.com/gastonstat/arcdiagram" target="_blank">github</a>.
		</p>

		<h3>Parsing Movie Scripts</h3>
		<hr class="margin" />
		<p>
		Once I figured out how to plot a basic arc diagram, I started to work on getting 
		the data. At least, transitioning from raw files into a a semi-structured file. 
		The main idea was to extract just the names of the characters and their corresponding 
		dialogues, while ignoring the descriptions and comments that are not part of any 
		dialogue.    
		</p>

		<h3>Identifying Top 20 characters</h3>
		<hr class="margin" />
		<p>
		With the character names and dialogues, I identified the top 20 most talkative 
		characters of all episodes combined. That is, I selected the top 20 characters 
		that had more dialogues. Why 20? Just because! I thought it was a nice number to 
		play with.
		</p>

		<h3>More Frequent Terms by Character</h3>
		<hr class="margin" />
		<p>
		The following step consisted of identifying the 10 most frequent terms mentioned 
		by each character. I did some text mining with the R package <code>tm</code> for 
		this task, and was able to find the frequency distribution by episode of those 10 words.
		</p>

		<h3>Graph</h3>
		<hr class="margin" />
		<p>
		The final step before getting my hands dirty with the plots, was to obtain a 
		network of the similarities (associations) among characters, based on the words 
		from their dialogues. For this I used the package <code>igraph</code> to get a 
		weighted graph.
		</p>
				
		<p>
		Here's the series of plots I managed to tweak to get my <a href="star_wars_final_arc_diagram.pdf">final arc diagram</a> 
		representation. Bear in mind that behind each of these plots there was a long and 
		tedious process of tuning the right parameters to get a decent display.
		</p>
		<br/></br>
		<img class="centered" src="/images/website/StarWars_Arc_Diagram1_Basic.png" />
		<hr/>
		<img class="centered" src="/images/website/StarWars_Arc_Diagram2_Arcs.png" />
		<hr/>
		<img class="centered" src="/images/website/StarWars_Arc_Diagram3_Pies.png" />
		<hr/>
		<img class="centered" src="/images/website/StarWars_Arc_Diagram4_Bands.png" />

		<p><a class="redbutton" href="https://github.com/gastonstat/StarWars">Code in R</a></p>
		<br/>
	</div>
</div>


