---
layout: post
title: "Code: Simple JQuery Div Slideshow"
tags:
- Javascript
- jQuery
---

**UPDATE: This code has been updated, please see [Simple JQuery Div Slideshow 2.0](http://www.jkirchartz.com/2011/11/code-simple-jquery-div-slideshow-20.html)**

Here's a super-simple DIV slideshow with JQuery based on one for prototype/scriptaculous, it can be found <a href="http://snippets.dzone.com/posts/show/1068">here</a>. The beauty is that it can contain anything 
a div can. I've been using it for just a single image link, but you can put anything in there. Here's the HTML:

{% highlight html %}
    <div id="slideshow1" class="slide">
        <div>frame 1</div>
    </div>
    <div id="slideshow2" class="slide" style="display: none">
        <div>frame 2</div>
    </div>
    <div id="slideshow3" class="slide" style="display: none">
        <div>frame 3</div>
    </div>
    <div id="slideshow4" class="slide" style="display: none">
        <div>frame 4</div>
    </div>
{% endhighlight %}

And the Javascript

{% highlight javascript %}
    s_ss(1, 4, 5000);
    // usage: s_ss(first frame, end frame, delay time);
    function s_ss(s_f, e_f, delay) {
        setTimeout(s_s(s_f,s_f,e_f, delay), delay);
    }
    function s_s(f, s_f, e_f, delay) {
        return (function() {
	    $(\'#slideshow\' + f).fadeOut();
	    if (f == e_f) { f = s_f; } else { f = f + 1; }
	    setTimeout("$(\'#slideshow" + f + "\').fadeIn();", 850);
	    setTimeout(s_s(f, s_f, e_f, delay), delay + 850);
	})
	}
{% endhighlight %}

I'm thinking about maybe making this a real jQuery Plugin, but like I said, I'm just switching from Prototype/Scriptaculous to jQuery; so it may be a while.
**UPDATE: This code has been updated, please see [Simple JQuery Div Slideshow 2.0](http://www.jkirchartz.com/2011/11/code-simple-jquery-div-slideshow-20.html)**
