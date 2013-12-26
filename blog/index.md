---
title: Blog
layout: default
---

# Data Analysis Visually EnfoRced

<div id="posts">

    {% for post in site.posts offset: 0 limit: 5 %}
        <div style="border-bottom: 1px solid #eee; padding: 5px 0px;">
    	    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
	        <small style="color: #999;font-family: helvetica;">{{ post.date | date_to_string }}</small> 
        	<p>{{ post.excerpt }} <small><a href="{{ post.url }}">Continue reading</a></small></p>
        </div>
    {% endfor %}

	<div style="margin: 15px 0; padding-top: 5px;">
    	<a href="/blog/archive/" title="an archive of all posts">See all posts &rarr;</a>
	</div>

</div>

