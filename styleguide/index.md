---
layout: flexible
title: Styleguide
---

<div id="block">
	<div class="prose">
	<h1>H1 Main Page Title</h1>
	<h4>h4 Optional short description or abstract</h4>
	<h2>h2 Introduction</h2>
	<hr class="margin" />
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
	incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
	exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	</p>
	<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
	fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
	qui officia deserunt mollit anim id est laborum.
	</p>
	<h3>h3 Section</h3>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
	incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
	exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	</p>
	<hr/>
	</div>
</div>


<div id="block">
	<div class="prose">
		<h1>Styleguide</h1>
		<p>This page exists to demonstrate the visual styles of the various elements that 
		comprise the design of this site.
		</p>

		<h2>Typography</h2>
		<hr class="margin" />
		<h1>This is a Level 1 Heading</h1>
		<p>The main page header of a page is an <code>h1</code> element
		</p>
		<h2>This is a Level 2 Heading</h2>
		<p>The secondary header <code>h2</code> element is used for sections in a page. 
		</p>
		<h3>This is a Level 3 Heading</h3>
		<p>A third level heading is an <code>h3</code> element which may be used for any subsections 
		in a page or post. 
		</p>
		<h4>This is a Level 4 Heading</h4>
		<p>An <code>h4</code> element is occasionally used for ... 
		</p>
		<h5>This is a Level 5 Heading</h5>
		<p>The secondary header <code>h5</code> element is used for sections in a page. 
		</p>
		<h6>This is a Level 6 Heading</h6>
		<p>The secondary header <code>h6</code> element is used for sections in a page. 
		</p>
		
		<h3>Emphasis</h3>
		<p><em>Text with emphasis looks like this one</em>
		</p>
		<h3>Bold type</h3>
		<p><b>Text in bold looks like this one</b>
		</p>

		<h3>Pre-formatted</h3>
		<pre>Example of pre-formated text</pre>
		<h3>Code</h3>
		<code>Example of code text</code>
		
		<h3>Code with Highlighted Syntax</h3>
		<div class="highlight"><pre><code class="r"><span class="c1"># specify output_file with column names in the first line</span>
cat<span class="p">(</span>c<span class="p">(</span><span class="s">&quot;Id&quot;</span><span class="p">,</span> <span class="s">&quot;Name&quot;</span><span class="p">,</span> <span class="s">&quot;Var1&quot;</span><span class="p">,</span> <span class="s">&quot;Var2&quot;</span><span class="p">,</span> <span class="s">&quot;Var3&quot;</span><span class="p">,</span> <span class="s">&quot;Status&quot;</span><span class="p">),</span> <span class="s">&quot;\n&quot;</span><span class="p">,</span>
    file <span class="o">=</span> <span class="s">&quot;/path_output_file/output_file&quot;</span><span class="p">)</span>
		</code></pre></div>
		
		<h3>Block Quote</h3>
		<blockquote>The package's DESCRIPTION file must show both the name and email address of 
a single designated maintainer (not a mailing list). That contact address must be kept up 
to date, and be usable for information mailed by the CRAN team without any 
form of filtering</blockquote>
	</div>
</div>


<div id="block">
	<div class="prose">
		<h2>Lists, Groups and Links</h2>
		<hr class="margin" />
		<h3>Unordered list</h3>
		<ul>
		  <li>Item</li>
		  <li>Item</li>
		  <li>Item</li>
		</ul>
		<h3>Ordered list</h3>
		<ol>
		  <li>One</li>
		  <li>Two</li>
		  <li>Three</li>
		</ol>
		<h3>Links and buttons</h3>
		<p>Example of a link: <a>link</a></p>
		<p>Example of a stand gray (#f2f2f2) button: <a class="graybutton">button</a></p>
		<p>Example of a stand tomato (#f74a52) button: <a class="redbutton">button</a></p>
		<p>Example of a stand turquoise (#0a9cb2) button: <a class="greenbutton">button</a></p>
		<h3>Horizontal Rule</h3>
		<p>The <code>hr</code> element.
		</p>
		<hr/>
		<h2>Images</h2>
		<hr class="margin" />
		<p>There are two types of images:  <code>full-wide</code> and <code>centered</code>
		</p>
		<p><code>full-wide</code> images occupy the total width of the screen. They are 
		used for great visual impact, and to provide a detailed view of a graphical element.
		</p>
	</div>
</div>


<div id="block">
	<div class="wide-image">
		<img class="full" src="/images/website/fullwidth_arcdiagram.png" alt="full-wide" />
	</div>
	<div class="prose">
		<p><code>centered</code> images occupy just a partial space of the screen width. 
		They are used to show a visual element like a photo, screenshot, chart, or plot.
		</p>
		<p>
		<img class="centered" src="/images/website/fullwidth_arcdiagram.png" alt="centered" />
		</p>
	</div>
</div>


<div id="block">
	<div class="prose"> 
		<h2>PLS Path Modeling with R</h2>
		<p>
		This book provides a hands-on introduction to Partial Least Squares Path Modeling (PLS-PM) 
		using the R package <code>"plspm"</code>. &nbsp;&nbsp;
		<p><a class="button" href="/PLS_Path_Modeling_with_R.pdf">Download</a></p>
		</p>
	</div>
</div>

<hr/>

<div id="block">
	<div class="column1of3"> 
		<p>Columna 1</p>
		<img src="/images/colwise_groups.png" />
	</div>
	<div class="column2of3"> 
		<p>Columna 2</p>
		<img src="/images/colwise_groups.png" />
	</div>
	<div class="column3of3"> 
		<p>Columna 3</p>
		<img src="/images/colwise_groups.png" />
	</div>
</div>

<div class="clear"></div>