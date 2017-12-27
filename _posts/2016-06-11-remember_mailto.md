---
layout: post
title: Remember Mailto?
---

"How do I send this to my Mom..." she asked herself scrolling up and down the page;
"...I can tweet or add it to pinterest," she sighed in resignation<!--more-->,
opened a new tab, typed 'gmail.com' and navigated all the way to the compose pane.

There's a bit of debate about what services to include when you want users to share your pages, but often the original ultimate app is forgotten, Email.
Sending an email isn't hard, but it could be easier. It used to require a plugin or an external email app;
If you didn't have either it would open any email app that just happens to be on your computer but probably not associated to any email account, and ask you to set it up.
(which was super annoying) Firefox, Opera, and Chrome all reportedly to take you to your web-based e-mail provider; as of right now it looks like IE is the ugly duckling, again, but I always have high hopes for the future (which may have already occurred).

Anyhow... Back in the day we'd use the `mailto:` URI scheme to let users send us emails (Uphill! Both ways! While fighting mastodons!) We'd type (By hand! Onto the cave wall!) a link like

{% highlight html %}

    <a href="mailto:webmaster@example.com?subject=Hello&body=I%20like%20your%20site">

{% endhighlight %}


And clicking that opened a new email, to `webmaster@example.com` with the subject
`Hello` and a body of `I like your site` but the mailto protocol is more versatile
than that,there's `cc` and `bcc` and multiple recipients by separating addresses with commas.

{% highlight html %}

    mailto:user@example.com,user2@example.com?cc=user3@example.com&bcc=user4@example.com

{% endhighlight %}

But that assumes you know who you want to send the email `To` which is
impossible, even for [Kreskin][0], good thing it's not necessary. The protocol
alone will suffice, but you should probably include a link, the title, maybe a
byline or blurb. Watch out though, this is a URI so it generally has to be
URI encoded so: `%20` for space, `%3F` for question mark, and so on.

{% highlight html %}

    mailto:?subject=I%20thought%20you%20would%20like%20this&body=http://example.com/some/page

{% endhighlight %}

URIs are already URI encoded so you don't have to do anything special to those.
You may want to generate this server-side or via JavaScript because on some
versions of iPhone the encoding may show up in the mail app and be ugly.


## links:

* [RFC-6068](http://www.ietf.org/rfc/rfc6068.txt)
* [mailto generator](http://www.mailto.co.uk/)

P.S. If you like this article you can always [send me an email ;)](mailto:me@jkirchartz.com?subject=Thanks%20For%20Reminding%20Me%20About%20Mailto&body=Can%20I%20have%20your%20autograph)

[0]: http://en.wikipedia.org/wiki/Kreskin
