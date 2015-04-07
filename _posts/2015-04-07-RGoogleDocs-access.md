---
layout: post
title: "Allow RGoogleDocs to access your Google Account"
date: 2015-04-06
category: how-to
tags: [read, data]
image: google_less_secure_apps.png
---

In this post I'll talk about how to unblock your Google account so you can have access to your Goolgle docs when using the R package RGoogleDocs.

<!--more-->

-----

## R Package RGoogleDocs
 
The R package __RGoogleDocs__ (by Duncan Temple Lang) is a great tool. Basically, this package is a simple R interface to your google docs. In other words, `"RGoogleDocs"` allows you to interact with the documents in your google drive from within R.

### Installation

First you need to install the package. You can install it not from CRAN but from its github repository---via the `"devtools"` package (which I'm assuming you already have installed). Here's how to install `"RGoogleDocs"`:

{% highlight r %}
# installing RGoogleDocs (via devtools)
library(devtools)

install_github("RGoogleDocs", "duncantl")

library(RGoogleDocs)
{% endhighlight %}

You can learn more about the package from the documentation provided by Duncan in his _omegahat_ website: <br> 
[http://www.omegahat.org/RGoogleDocs/run.html](http://www.omegahat.org/RGoogleDocs/run.html)

Or you could also read the marvelous book [XML and Web Technologies for Data Science with R](http://www.springer.com/us/book/9781461478997) (by Deb Nolan and Duncan Temple Lang).

-----

### Allowing access to your Google account

To interface with your google docs, you must first specify your login name for Google and your password information in the function `getGoogleAuth()`. For instance, in my case the login name is `gaston.stat@gmail.com`, and let's say I have my password in the object `gpasswd`. The authentication process would be like this:

{% highlight r %}
auth = getGoogleAuth("gaston.stat@gmail.com", gpasswd)
{% endhighlight %}

The problem is that Google, by default (and for very good reasons), will deny R accessing your account. According to Deb and Duncan (page 360):

> On occasions, the attempt to call `getGoogleAuth()` returns with an error saying that the operation if Forbidden. The Google authorization service has decided that additional vetting is necessary.


Moreover, you will likely receive an email in your gmail account with the subject title __"Google Account: sign-in attempt blocked"__. Here's the content of the email I got:

![](/images/blog/google_signin_attempt.png)

So what can we do about it?

To solve the problem click on the link <br>
[https://www.google.com/settings/security/lesssecureapps]( https://www.google.com/settings/security/lesssecureapps) which will take you a new window presenting you the option of turning on access to other apps (so that RGoogleDocs can have access to your account)

![](/images/blog/google_less_secure_apps.png)

-----

### Working with google spreadsheets

Once you've turned on the _lesssecureapps_ option, you can start working with `"RgoogleDocs"`. First, you have to create a connection for working with spreadsheets. To get access to the spreadsheets (rather than word processing documents), select `service = "wise"`:
{% highlight r %}
sheets.con = getGoogleDocsConnection(getGoogleAuth("gaston.stat@gmail.com", "...", service = "wise"))
{% endhighlight %}

Then, you can use `getDocs()` with this connection to get back information about spreadsheets only:
{% highlight r %}
a = getDocs(sheets.con)
{% endhighlight %}

There's also the function `getWorksheets()` which obtains a list of objects that identify each of the worksheets within a spreadsheet. For example, say you have a spreadsheet named `"schedule"` that contains several worksheets:
{% highlight r %}
ts = getWorksheets(a$schedule, sheets.con)
names(ts)
{% endhighlight %}

`getWorksheets()` is smart enough to be able to work from the name of the spreadsheet, e.g.
{% highlight r %}
ts = getWorksheets("schedule", sheets.con)
{% endhighlight %}
  
However, it is faster to use the `GoogleDocument` object returned via `getDocs()` as it avoids an extra request to the Google Docs server.


