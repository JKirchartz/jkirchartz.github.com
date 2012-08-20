--- 
time: 2011-11-18 00:46:00 -05:00 
title: "Code: Simple JQuery Div Slideshow 2.0" 
layout: post 
name: code-simple-jquery-div-slideshow-20 
--- 

Yes, I promised to update this in July of 2009, so sorry for taking so long. I've been using [jQuery Cycle](http://jquery.malsup.com/cycle/) for most of my slideshow needs, but looking at the old code is just so _old_, it's non-standard and probably breaks for some people, I just have to rewrite it.  



Here's the jsFiddle for it:


This code is a lot cleaner, relies on jQuery a bit more, and no longer uses
evil eval's. The HTML is simpler too. You just need to nest slides inside of a
container, in this case classed 'slideshow', the code above finds the children
of that element (in the code below) and fades them in and out, then sets up
the next loop through the child elements there.


  The delay functions are kinda iffy, this is just a hack, but I hope it's
helpful.
