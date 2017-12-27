---
layout: post
title: Clickify 2: The Reconing
published: false
tags: article
---o

It's been almost a decade since I've last needed [to alert users that links are indeed clickable](/2010/04/new-plugin-stupify.html),
but now, it's back with a vengance! [Before]() appending "Click Here" to every link was enough, but thanks to advances in UI and UX
we wouldn't want to ruin our lovely design. Now the words "Click Here to Visit!" hover ominously over every single link!


    <script>
        $('a').on({ mouseenter: function(e) {
          var text = "Click Here to Visit!";
          if (/\.(png|jpg|jpeg|gif)$/.test($(this).attr('href'))) {
            text = "Click Here to view Full-Sized!";
          }
          $('<p id="clickhere"></p>').text(text).css({
            'position': 'absolute',
            'z-index': '9999',
            'border' : '1px solid #333',
            'backgroundColor' : '#161616',
            'border-radius': '5px',
            'padding': '2px 10px',
            'color': '#FFF'
          }).appendTo('body');
        }, mouseleave: function(e) {
          $('#clickhere').remove();
        }, mousemove: function(e) {
          $('#clickhere').css({ 'top': e.pageY + 10, 'left': e.pageX + 20 });
        }});
    </script>


This has been stupid and useless for a long time, But don't take my word for it!

* [Why Your Links Should Never Say "Click Here"](https://www.smashingmagazine.com/2012/06/links-should-never-say-click-here/)
* [Don't Say "Click Here" on Link Text](https://web.archive.org/web/20100412102053/http://www.goodusability.co.uk:80/2009/01/dont-say-click-here-on-link-text)
* [Don't Use "click here" as link text](https://www.w3.org/QA/Tips/noClickHere)
* [The curse of Click Here](http://www.uxforthemasses.com/click-here/)
