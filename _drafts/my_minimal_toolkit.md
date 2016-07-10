---
layout: post
title: My Minimalist Toolkit
published: false
tags: article project
---

[This minimalist site](http://tools.jkirchartz.com/) provides tools for URL un-shortening, URI encoding and decoding, choosing a random color, converting commas to tabs or vice versa, and escaping regex for use in JavaScript, all in a single html page.
There are plenty of online tools that could fulfill your needs, unfortunately the site's design may take the backseat, and there may be many page loads and other scripts. This toolbox only has the tools you need without the cruft.
<!--more-->

Not only is it minimalist design, but the code is minimalistic as well.
Each tool consists of a [form and a short script](view-source:http://tools.jkirchartz.com/), and the page itself uses another small bit of JavaScript to handle navigation.

Behind this front-end minimalist toolkit hides a few other tools not listed in
the navigation,

## [Job Portal](http://tools.jkirchartz.com/jobportal.html)
using [Indeed](http://indeed.com) &amp;
[Google Maps](https://developers.google.com/maps/documentation/javascript/) to
find, map, and estimate commute times for indeed jobs searches around a
particular address.

## [Remote Work Search](http://tools.jkirchartz.com/remotework.html)
A simple JS script to search Craigslist, FlexJobs, WeWorkRemotely, and
SkipTheDrive. This could easily be included on the tools page, it's a simple
form with a tiny bit of javascript gluing it together, however it's use wouldn't
fit with the day-to-day tools found there.

## Chatbot

An XMPP chatbot you can contact at <KirchBot@jkirchartz.appspotchat.com>, it's
able to roll a die of any number of sides, search giphy or bukk.it for
images/gifs, unshorten links, provide links to google search results, or
answer's from DuckDuckGo's answers engine.

## feeds

I've created a few feed agregators
* my [megafeed](http://tools.jkirchartz.com/megafeed) which collects most of my
activity around the web
* [jobfeed](http://tools.jkirchartz.com/jobfeed) which
collects job postings in the Pittsburgh area targeting python, php, javascript,
wordpress, and nodejs
* [researchfeed](http://tools.jkirchartz.com/researchfeed) which cleans
<http://research.jkirchartz.com>'s feed from cruft surrounding tumblr links
posts and provides a direct link to the source post(s)

most of these feeds actually end up posting on [jkirchartz_exe](https://twitter.com/JKirchartz_exe), which deserves a post of it's own.
