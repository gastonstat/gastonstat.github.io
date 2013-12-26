---
layout: post
title: "Using Geocoding Google API"
date: 2012-05-20
categories: how-to
tags: [API, geocoding, google maps, xml]
---

### Ever wanted to transform an address into longitude and latitude coordinates?

<!--more-->

When working with data that can be projected to geographic places, there's nothing more 
tempting than trying to visualize it in a map. You just need a set of coordinates 
(longitude and latitude) and some map visualization tool. So far, so good. The problem 
arises when the only thing you have is addresses but no longitude and latitude. What can 
be done in such cases? Meet <a title="geocoding" href="http://en.wikipedia.org/wiki/Geocoding" target="_blank">Geocoding</a>!

According to wikipedia: 

> geocoding is the process of finding associated geographic coordinates from other 
> geographic data, such as street addresses or zip codes 

The idea is very simple. Let's say we have some address like 
```1600 Amphitheatre Parkway, Mountain View, CA```, and that we ant to get its geographic 
coordinates. By using a geocoding tool we would find that the previous address has 
latitude 37.423021 and longitude -122.083739.


### What can we use to <em>geocodify</em> our data in R?

An interesting &mdash;but not the only&mdash; option is to use the Geocoding Google API from 
<a title="google maps api" href="https://developers.google.com/maps/documentation/webservices/" target="_blank">Google Maps API Web Services</a>.

<a title="google maps api" href="https://developers.google.com/maps/documentation/webservices/" target="_blank"><img title="API_Geocoding" src="/images/api_geocoding.png" /></a>

If you check the <a href="https://developers.google.com/maps/documentation/geocoding/" target="_blank">geocoding documentation</a>, 
you'll see that we can do requests and obtain the answers in XML format. The required url 
format that we would need is something like this:

{% highlight text %}
http://maps.googleapis.com/maps/api/geocode/xml?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&amp;sensor=false
{% endhighlight %}


### Code in R of a Geocoding API request with XML response

In order to geocode some data in R we need to use the library ```"XML"``` (by 
Duncan Temple Lang). Here's a  &mdash;simple example &mdash; of how to do that:

{% highlight r %}
# load package XML
library(XML)

# Let's say we have a vector with 3 addresses
address = c(
  "Newark Bl and Mayhews Landing Rd, Newark, CA",
  "Powell and North Point Dr, San Francisco, CA",
  "Sonoma Bl and Yolano Dr, Vallejo, CA"
)

# define geocoding google api url
geo_url = "http://maps.googleapi.com/maps/api/geocode/xml?address="

# empty vectors to store latitude and longitude
lat = rep("", 3)
lon = rep("", 3)

# parsing
for (i in 1:length(address))
{
  # replace spaces by '+' symbols in current address
  query = gsub(" ", "+", address[i])
  
  # create query
  geo_query = paste(geo_url, query, "&sensor=false", sep="")
  doc = htmlParse(geo_query)
  
  # extract latitude and longitude
  lat[i] = xpathSApply(doc, "//location/lat", xmlValue)
  lon[i] = xpathSApply(doc, "//location/lat", xmlValue)
}

# convert as numeric
lat = as.numeric(lat)
lon = as.numeric(lon)

# lat and lon in a matrix
cbind(lat, lon)
{% endhighlight %}


The obtained results should be:

{% highlight text %}
lat = 37.5396808, 37.8068281, 38.1323594
lon = -122.0336495, -122.412118, -122.2561071
{% endhighlight %}