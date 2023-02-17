---
layout: post
title: "Blog Post Bookmarklet, or Stealing Stefan's Idea&hellip;"
tags: article bookmarklet
---

A fine fellow told me about their [bookmarklet for making GHpages
posts](https://stefanhayden.com/blog/2022/10/01/Quick-jekyll-Posts-with-Bookmarklet/)
so I've decided to steal their idea, I love bookmarklets.<!--more-->

Theirs is a little more involved, I simplified it for my uses&hellip;

```
var isoDate = (new Date()).toISOString();
var date = isoDate.split('T')[0];
var t = prompt("title", "");
var title = t.replaceAll(/([&$\+,:;'"=\?@#\s<>\[\]\{\}[\/]|\\\^%])+/g, '-').toLowerCase();

var filename = date + "-" + title + '.md';

var html = [
'---',
'published: false',
'layout: post',
'title: ' + t,
'tags: article',
'---',
'<!--more-->',
].join('%0A');


window.location.href = "https://github.com/jkirchartz/jkirchartz.github.com/new/master/" + "?filename=_posts/" + filename + "&value=" + html;
```

I even used the <https://caiorss.github.io/bookmarklet-maker/> tool they did to turn it into a bookmarklet... which looks kinda like this:

```
javascript:(function()%7Bvar%20isoDate%20%3D%20(new%20Date()).toISOString()%3B%0Avar%20date%20%3D%20isoDate.split('T')%5B0%5D%3B%0Avar%20t%20%3D%20prompt(%22title%22%2C%20%22%22)%3B%0Avar%20title%20%3D%20t.replaceAll(%2F(%5B%26%24%5C%2B%2C%3A%3B'%22%3D%5C%3F%40%23%5Cs%3C%3E%5C%5B%5C%5D%5C%7B%5C%7D%5B%5C%2F%5D%7C%5C%5C%5C%5E%25%5D)%2B%2Fg%2C%20'-').toLowerCase()%3B%0A%0Avar%20filename%20%3D%20date%20%2B%20%22-%22%20%2B%20title%20%2B%20'.md'%3B%0A%0Avar%20html%20%3D%20%5B%0A'---'%2C%0A'published%3A%20false'%2C%0A'layout%3A%20post'%2C%0A'title%3A%20'%20%2B%20t%2C%0A'tags%3A%20article'%2C%0A'---'%2C%0A'%3C!--more--%3E'%2C%0A%5D.join('%250A')%3B%0A%0A%0Awindow.location.href%20%3D%20%22https%3A%2F%2Fgithub.com%2Fjkirchartz%2Fjkirchartz.github.com%2Fnew%2Fmaster%2F%22%20%2B%20%22%3Ffilename%3D_posts%2F%22%20%2B%20filename%20%2B%20%22%26value%3D%22%20%2B%20html%3B%7D)()%3B
```

There's nothing wrong with any of that, but it's a lot noiser than the style I use when I write [my own
bookmarklets](https://jkirchartz.com/demos/bookmarklets.html). It works, it's just missing my usual bookmarklet finesse.
I've been thinking that it's [time to use es6](https://caniuse.com/?search=es6)
for them (and everything else) because IE11 is surely dead by now, right? Is
anyone even tracking their browser share anymore? Here's a hand-optimized es6 alternative:

```
((t, d, h)=>{
d=d.split('T')[0];
h=[
'---',
'published: false',
'layout: post',
'title: \"' + t + '\"',
'tags: article',
'---','','',
'<!--more-->',
];
t = t.replaceAll(/([&$\+,:;'"=\?@#\s<>\[\]\{\}[\/]|\\\^%\.])+/g, '_').toLowerCase();
h = h.join('%0A');
window.location = `https://github.com/jkirchartz/jkirchartz.github.com/new/master/?filename=_posts/${d}-${t}.md&value=${h}`;
})(
prompt("title"),
new Date().toISOString(),
);
```

which crunches down to

```
javascript:((t,d,h)=>{d=d.split('T')[0];h=['---','published:false','layout:post','title:\"'+t+'\"','tags:article','---','','','<!--more-->',];t=t.replaceAll(/([&$\+,:;'"=\?@#\s<>\[\]\{\}[\/]|\\\^%\.])+/g,'_').toLowerCase();h=h.join('%0A');window.location=`https://github.com/jkirchartz/jkirchartz.github.com/new/master/?filename=_posts/${d}-${t}.md&value=${h}`;})(prompt("title"),newDate().toISOString());
```
Anyhow. This bookmarket might've helped me stick to the "100 days to offload"
thing a little better, but 100 blog posts in 100 days? that's not the way I
write, not anymore, not since... the incident... Pardon the digression, I would
probably write more if Github had a vim-mode on their editor, at least
something to swallow the `:w` I habitually drop to save my work.

As if I need another project, I think a fork of the bookmark generator is in
order. I don't think _anyone_ today is writing a minifier that splits the
difference with [PACKER](http://dean.edwards.name/packer/)'s Base62 encoding -
or at least follows sort of that style, the Base62 obsfucation is a bit much
for me, I just want the shortest script possible - and that means shrinking
variables names way too short to be _really_ meaningful. I probably should be
working on my _other_ projects before hacking _my_ preferences in minification
into an existing minifier.

Like, if `document` appears more than once in your bookmarklet, it can easily be shrunk to `d=document` for future reference - heck `d=document,$=d.querySelectorAll` has its uses... but no... I don't need another project... at least not one that I can't put together in a night or two.

