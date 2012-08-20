--- 
time: 2011-04-04 10:48:00 -04:00 
title: XUIjs for Mobile Development + 2 extensions 
layout: post 
name: xuijs-for-mobile-development-2 
--- 

I recently stared playing with [xui.js](http://xuijs.com/) it's a really nice library targeted to mobile devices, and it's based on JQuery. I'd really like to stick with jQuery but jQuery Mobile is actually more like jQueryUI for mobile and I'm not into making everything on the mobile web look like native iPhone (because if users wanted that UI they'd buy an iPhone!)  

The thing with switching between xui and jQuery is that all the functions
aren't there. Fortunately you can extend XUIjs! I was porting [Marco van
Hylckama Vlieg's Simple jQuery Accordion](http://www.i-marco.nl/weblog/jquery-
accordion-menu/) and needed jQuery's next and is function (I ended up
simplifying the code to do without the IS, but it might be useful to you)
Here's the extensions:


I ran into a couple problems, mainly that XUI doesn't return elements as
_this_ from it's main function but an object containing a list of elements,
but I finally figured it out and now pass the knowledge on to you for free,
because I'm awesome. Don't you love me?
