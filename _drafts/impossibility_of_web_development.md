---
layout: post
title: The Impossibility of Web Development
published: false
tags: article, 100 days to offload
---

<iframe width="1264" height="480" src="https://www.youtube.com/embed/dVGINIsLnqU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> "In Ancient Rome there was a poem about a dog that had two bones, he licked the one, he licked the other, he went in circles until he dropped dead" ~ Devo (Freedom of Choice)

How does one go about developing a website in 2021? Where do you start? The
common advice is "Learn HTML, CSS, and Javascript" - they're the core building
blocks of the web, after all.  But then what? How do you get from these basic
elements to a modern website or a single-page application? What if you don't
want a single-page application? Do we need a transpiler? The number of [options
are so overwhelming][9] it's hard to even get started.

There are over 1.6 Billion (with a B) websites with something north of 3
Billion users, according to some [NetStat
survey](https://www.internetlivestats.com/total-number-of-websites/). Looking
at w3techs we see 79% of the internet is powered by [PHP][1], most likely
because 41% of the internet runs [WordPress][2][^2], but even [plain files][3] make
up 1.5% of the net.  77.9% of the web is still using [jQuery][4], I'll cast the
blame for that one on WordPress as well, and [React][5] is reported on 2.6% of
known websites, barely more than websites that are using plain files! But React
is a big popular library from Facebook! What gives?

It turns out, most businesses are not Facebook; not even close to being
Facebook. Facebook gets over 2.5 Billion users a month, and employs over 60,000
people [according to their own statistics][6]. The [company has said that][7]
"Loading a user’s home page typically requires accessing hundreds of servers,
processing tens of thousands of individual pieces of data, and delivering the
information selected in less than one second," they have no qualms about
spending a [Billion dollars on a server farm][8]!

Being as big as Facebook might be your goal, but it's impossible to get there
overnight. Most of the sites I've worked on have run very comfortably on a
$5-per-month VPS[^1] &mdash; with one core, one gigabyte of memory, and a
terabyte or two of transfers (depending on the provider). You don't need a lot
of power or a fancy machine to host your website - you can use [solar power and
a single-board computer][10] if you'd like.



[1]: https://w3techs.com/technologies/overview/programming_language
[2]: https://w3techs.com/technologies/overview/content_management
[3]: https://w3techs.com/technologies/details/pl-static
[4]: https://w3techs.com/technologies/overview/javascript_library
[5]: https://w3techs.com/technologies/details/js-react
[6]: https://investor.fb.com/investor-news/press-release-details/2021/Facebook-Reports-First-Quarter-2021-Results/default.aspx
[7]: https://www.datacenterknowledge.com/data-center-faqs/facebook-data-center-faq
[8]: https://www.al.com/news/2021/06/facebook-spending-tops-1-billion-at-its-huntsville-data-center-campus.html
[9]: https://mentorphile.com/2019/02/23/option-paralysis-or-the-paradox-of-choice/
[10]: https://solar.lowtechmagazine.com/about.html


[^1]: Virtual Private Server (not even a whole dedicated server, part of one)
[^2]: WordPress is built with PHP
