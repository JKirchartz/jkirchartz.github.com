---
layout: post
title: A Monastic Look at Perl
published: false
tags: article, 100 days to offload
---

(this article also available in [Tilde Zine Issue 9][27])

Perl was created in 1987 by Larry Wall[^1] who described it as "a language for
getting your job done." In 1991, when [`Programming Perl`][2] was first
published, Larry Wall's man page for perl went a little more in-depth,
[describing it][1] like so:

> Perl is an interpreted language optimized for scanning arbitrary text files,
> extracting information from those text files, and printing reports based on
> that information. It's also a good language for many system management tasks.
> The language is intended to be practical (easy to use, efficient, complete)
> rather than beautiful (tiny, elegant, minimal). It combines (in the author's
> opinion, anyway) some of the best features of C, sed, awk, and sh, so people
> familiar with those languages should have little difficulty with it.
> (Language historians will also note some vestiges of csh, Pascal, and even
> BASIC-PLUS.)
<!--more-->

[Later][16], Wall expanded this list of inspirations to "C, sh, csh, grep, sed,
awk, Fortran, COBOL, PL/I, BASIC-PLUS, SNOBOL, Lisp, Ada, C++, and Python"
&mdash; he borrowed bits from these "because the various features of these
languages ruled rather than sucked." Unlike [Python's "one obvious way to do
it"][18], perl's motto is TMTOWTDI ["There's More Than One Way To Do It"][19]. Learning
to get the same results with different code is one of the steps to [becoming a
Perl Ninja][20].[^6]

In the early 90s [Perl became the language of the dynamic web][11] because it
was a "Glue Language" to glue together Unix commands, it was only natural to
use it to glue websites together with [CGI scripts][21]. But I'm not here to
present a chronology of Perl over the years, I wasn't there for it, anyhow
[it's been done][3]. I remember some time the late 1990s when I was first
trying to become a "real programmer" that I picked up some "Learn Perl in 24
hours" book, and not having much success in 24 hours put off the whole thing
for nearly 20 years.  I've since learned to hack perl a bit and landed a job
where it's used extensively. When you dig into what's available in the [perl
ecosystem][23] there are multiple templating systems, folks who write perl
like it's a shell script, or C or Java or even Javascript, all cloistered away
into their specific niches, mixing and matching their tools as needed. There
is even a [weekly coding challenge that proves TMTOWTDI][24] with community
submissions

The title of this article alludes to the [Perl Monks][5] Community, which is
themed after a monastery, ranking members through monks, initiates, and
saints. The comparison of hackers to other devotees is not new, the Commodore
had the "Guru Meditation Error," there's also [programming koans][13] and
[coding koans][14], and the [Tao of Perl][12] or even [Zen of Perl][15]. Not
to mention somebody else's essay about [The Cathedral &amp; The Bazaar][26], the
references are everywhere; for example In [Steven Levy's "Hacker's"][6] many
people are referred to as "gurus," their workspaces are called "monasteries"
and the people who operated IBM mainframes were referred to as a "Priesthood,"

> and those privileged enough to submit data to those most holy priests were
> the official acolytes. It was an almost ritualistic exchange.
>
> > Acolyte: Oh machine, would you accept my offer of information so you may
> > run my program and perhaps give me a computation?
> >
> > Priest (on behalf of the machine): We will try. We promise nothing.
>

Larry Wall has never hidden [his Christian faith][17], he's referenced it in
his excellent [speeches][7], but he's no fire-and-brimstone bible-thumper[^4],
he discusses a variety of ideas with wit, joy, reverence, and irreverence.
I've found [these talks][7] to be infinitely fascinating. He connects a lot of
different ideas and ideologies, it's clear that Perl's "glue" was born from
Wall's personal adhesiveness, his willingness to find the best part of
everything and [steal like an artist.][25]

You may be familiar with [Wall's Famous "Three Virtues of a Programmer"][9]: Laziness,
Impatience and Hubris; but in his [second "State of the Onion"][10] &mdash;
delivered at the 1998 Perl conference &mdash; he expands
on that with three virtues of community[^2]

> \[The three virtues of a Programmer\] are virtues of passion. They are not,
> however, virtues of community.  The virtues of community sound like their
> opposites: diligence, patience, and humility.
>
> They're not really opposites, because you can do them all at the same time.
> It's another matter of perspective. These are the virtues that have brought
> us this far. These are the virtues that will carry our community into the
> future, if we do not abandon them.
>
> Basically, we just have to stay the course. Friedrich Nietzsche[^3] called it "a
> long obedience in the same direction", which is a good snappy slogan. But I
> like the full quote too:
>
> > The essential thing "in heaven and earth" is ... that there should be long
> > obedience in the same direction; there thereby results, and has always
> > resulted in the long run, something which has made life worth living.

The passions that drive us must be tempered and honed. Diligence, Patience,
and Humility are like older [monastic tenets][22], are virtues that cultivate
a mindfulness that TMTOWTDI[^5] applies to more than just code, and a grace
that comes from recognizing that we don't all share the same thought processes
and experiences to do things in the same "one obvious way." There might not
even be one obvious way &mdash; once you've begun working diligently you'll
find many more solutions and aspects to a problem than you initially imagined.
If you think you know everything already you'll soon be humbled, and that's
life.


[^1]: A [Benevelent Dictator For Life][4]
[^2]: Something I've been thinking about a lot lately
[^3]: See? Larry's not holding a grudge against the guy who famously said "God is dead"
[^4]: He probably read the contents instead of weaponizing the book
[^5]: There's More Than One Way To Do It, remember.
[^6]: Ninjas are sort of like Monks, right?

[1]: https://www.math.utah.edu/docs/info/perl_5.html#SEC7
[2]: https://archive.org/details/programmingperl000wall
[3]: https://en.wikipedia.org/wiki/Perl
[4]: https://en.wikipedia.org/wiki/Benevolent_dictator_for_life
[5]: https://www.perlmonks.org/
[7]: https://bookshop.org/p/books/hackers-mr-steven-levy-mba-jd/74d248c34b8aaeb2?ean=9781449388393&next=t
[8]: https://en.wikipedia.org/wiki/Larry_Wall#Further_reading
[9]: https://thethreevirtues.com/
[10]: http://wall.org/~larry/onion/thumbonion.html
[11]: https://opensource.com/life/16/11/perl-and-birth-dynamic-web
[12]: https://www.perlmonks.org/?node_id=93118
[13]: https://github.com/topics/koans
[14]: https://gopher.tildeverse.org/tilde.team/1/~kirch/koans/
[15]: https://www.perlmonks.org/?node_id=752029
[16]: https://www.perl.com/pub/1999/03/pm.html/
[17]: https://web.archive.org/web/20140908122704/http://www.techgnosis.com/wall1.html
[18]: https://www.python.org/dev/peps/pep-0020/#the-zen-of-python
[19]: https://everything2.com/title/TMTOWTDI
[20]: https://everything2.com/title/10+steps+to+becoming+a+Perl+Ninja
[21]: https://wiki.c2.com/?CommonGatewayInterface
[22]: https://en.wikipedia.org/wiki/Seven_virtues#Seven_capital_virtues
[23]: https://www.cpan.org/
[24]: https://theweeklychallenge.org/
[25]: https://files.addictbooks.com/wp-content/uploads/2023/10/Steal-LikeanArtist.pdf
[26]: https://opensourcesecurity.io/2026/01-cathedral-megachurch-bazaar/
[27]: https://tilde.town/~zine/
