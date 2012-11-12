---
layout: post
title: Why I stopped designing in Photoshop
published: false
tags:
- Article
---

When I was learning design I was glued to photoshop. 
Touching every filter and tool, researching customisation and automation.
Working hard to improve my skills, and learning all the tricks and [etiquette](http://photoshopetiquette.com), but it was hogging my time.
It was all fluff, web browsers don't care about your layer-naming scheme or how well you use smart objects.
The web is open, free, and unpredictable; Photoshop is none of those things.
It's a monolith of photo manipulation and drawing tools, it exists purely for creating and improving stunning images.
It's not a web devlopment tool, it's a graphics tool, and you should always use the right tool for the task at hand.

#PX

Everything you do in Photoshop has to be pixel-perfect, snapping to the pixel grid ensures jpegs are crisp and don't have any jagged edges or odd artifacts. 
Only one small problem: on the web, [there is no such thing as pixel perfect]({% post_url 2012-07-12-there-is-no-such-thing-as-pixel-perfect %}). 
There's just no telling what a pixel will be on the end-user's screen. 
When using viewed at smaller resolutions set pixel values don't change, so if you have a combined total of `960px` of margins, padding, and images on a `320px` wide screen you're not giving the user the best experience.
There's another bug when using IE6-8, if you set your font with a pixel height it won't resize like modern browsers and this hurts your site's accessability.

#Mockups

Sometimes mockups are neccessary, but I don't use them often. 
It's much faster to prototype instead and it gives you a great head start to the final product. 
Clients love seeing progress, and if you let them play with the minimum viable product they feel much more involved in the process. 
This also allows them to give you feedback quicker, spot mistakes, and ask questions &mdash; all valuable time savers. 
