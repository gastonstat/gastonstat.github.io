---
title: Blog
layout: page
---

# Data Analysis Visually EnfoRced

<div id="posts">

    {% for post in site.posts offset: 0 limit: 8 %}
    	<h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
	    <h5>{{ post.date | date_to_string }}</h5>
	    {% if post.image %}
	    <p>
	    	<a href="{{ post.url }}"><img class="centered" src="/images/{{post.image}}" alt=""></a>
    	</p>
    	{% endif %}
        <p>{{ post.excerpt }} </p>
        <p><a href="{{ post.url }}"><em>Continue reading</em></a></p>
        <hr>
    {% endfor %}

    <h6><a href="/blog/archive/" title="an archive of all posts">See all posts &rarr;</a></h6>
	
</div>

