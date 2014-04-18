---
layout: post
title: "Mac Keyboard Shortcut to Open RStudio "
date: 2014-04-09
categories: resources
tags: [R, RStudio, keyboard]
image: rstudio_keyshortcut.png
---

In this post I will show you how to create your own keyboard shortcut to open RStudio 
(or any other application) in a mac.

<!--more-->

<img class="centered" src="/images/blog/rstudio_keyshortcut.png">

I use RStudio for my daily work with R so I constantly find myself clicking on the small 
RStudio icon on the dock of my macbook every time I want to open it. The problem is that 
I became kind of tired of having to look for the icon, position the mouse pointer on it, 
clicking the icon, and then moving the mouse inside of the file's window to start working.

No more clicking on icons! I decided to create a keyboard shortcut (⌘ + control + R) to launch 
Rstudio as well as other applications that I use very often. 


### Creating your own keyboard shortcut

To create my keyboard shortcut I followed a very nice tutorial by Josh Jonhson: 
[How to Launch Any App with a Keyboard Shortcut](http://computers.tutsplus.com/tutorials/how-to-launch-any-app-with-a-keyboard-shortcut--mac-31463) 

I will walk you through the general game plan listed below, describing the details of 
each step. The process involves two major task. The first task involves creating a service to 
**launch an application** (RStudio in our case). The second task consists in associating 
a keyboard shortcut to the launching application service.

1. Creating Launching Application Service
    + Open *Automator*
    + Select *Service*
    + Indicate *Launch Application* as Service
    + Select the application to be launched
    + Give the launching service a name and save it
2. Associating a Keyboard Shortcut 
    * Open System Preferences 
    * Select Keyboard Shortcut
    * Add application shortcut
    * Select the launching service 
    * Indicate your own combination of keys
  

### Creating a Launching Application Service

Go to **Applications** and open **Automator** which is the white little cyclopean robot 

<img class="centered" src="/images/blog/screenshot_applications_automator.png">


After clicking **Automator**, a window will be prompted asking you to choose a type for 
your document. Just choose **Service** (i.e. the gear icon)

<img class="centered" src="/images/blog/screenshot_automator_service_small.png">


Once inside the **Service** menu, you'll see a bunch of icons in the sidebar menu on the left. 
Scroll down until you find the icon **Launch Application** which you need to open.

<img class="centered" src="/images/blog/screenshot_automator_service_launch_application.png">


As you can tell, you need to specify the application you want to launch: **RStudio** in this case.

<img class="centered" src="/images/blog/screenshot_launch_application_Rstudio_large.png">


Change the default value ```text``` associated to **Service receives selected** into 
```no input```.

<img class="centered" src="/images/blog/screenshot_launch_application_Rstudio.png">


The next step is to save the service which requires you to give it a name. In my case 
I'm saving the service under the name **Launch Rstudio** but you can use whatever name 
you want.

<img class="centered" src="/images/blog/screenshot_launch_Rstudio_small.png">


### Associating a Keyboard Shortcut to the Launching App Service

We're done with specifying a launching service for RStudio. Now we need to create a 
keyboard shortcut that we can use to launch RStudio. To do this, you need to go to 
**System Preferences** and open the **Keyboard** icon.

<img class="centered" src="/images/blog/screenshot_system_preferences.png">


Once inside the **Keyboard** menu you have to select the tab **Keyboard Shortcuts**. 
Click on the ```+``` symbol at the bottom to add an application shortcut.

<img class="centered" src="/images/blog/screenshot_keyboard_shortcuts.png">


Click on the **Services** icon (i.e. the gear) and look for the name you gave it to 
the launching service (eg in my case is *Launch Rstudio*).

<img class="centered" src="/images/blog/screenshot_keyboard_shortcuts_service.png">


Finally, click on the **add shortcut** button and indicate what combination of 
keys you want to be associated as a shortcut. 

I decided to use the keys ```⌘ + ctl + R``` but you can select a different combination. 
Just be careful not to use already existing keyboard shortcuts. 

<img class="centered" src="/images/blog/screenshot_keyboard_shortcuts_launch_Rstudio.png">

That's it! Enjoy your keyboard shortcut.
