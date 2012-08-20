--- 
time: 2011-10-04 14:28:00 -04:00 
title: jQuery type effect plugin 
layout: post 
name: jquery-type-effect-plugin 
--- 

Let's kick it old-school, with the absolute CLASSIC typewriter effect. I couldn't find a decent jQuery version of this effect that worked, so I pluginified some vintage javascript, checkout the [JSFiddle](http://jsfiddle.net/JKirchartz/JEpWV/) embeded below. Click the play button to see the effect.  



One little "bug" here is that I'm not handling any dom elements, so the raw
html code is displayed while it's writing, but as soon as it's written the dom
handles it as elements, you could pre-parse the html and write the elements
wholesale but that's far beyond the scope of this simple solution.


If you wanna see the whole shebang check the jsfiddle at
[http://jsfiddle.net/JKirchartz/JEpWV/](http://jsfiddle.net/JKirchartz/JEpWV/)
