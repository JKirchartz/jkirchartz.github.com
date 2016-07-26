---
layout: post
title: Randomize Cowsay Critters
tags: article
---

[Cowsay][1] is a fun little app that draws a cow that says things, but you can do so
much more than a cow, there's all sorts of fun ascii art critters in there; but
how do we get to them? <!--more--> Lots of solutions simply find the directory where
cowfiles (the templates that define the critters) are stored and hard-code that;
but how do you know where they are?

Turns out, cowsay will tell you if you pass the `-l` flag like so:

{% highlight console %}
    $>cowsay -l
{% endhighlight %}

which outputs the directory, and a list of all available cowfiles - much simpler
than using `find`. But if there's a list of cowfiles there, why bother using
`ls` to get the directory listing? simply trim off the first line by piping to
`sed`, and ask it to delete it

{% highlight console %}
    $>cowsay -l  | sed "1 d"
{% endhighlight %}

now we've got a nice clean list to randomize; You could use `shuf`, or bash's
built-in array-mangling utilities; for sake of portability, this script uses
both:


{% highlight bash %}
    #! /bin/bash
    
    if type shuf >/dev/null 2>&1; then
      cowfile="$(cowsay -l | sed "1 d" | tr ' ' '\n' | shuf -n 1)"
    else
      cowfiles=( $(cowsay -l | sed "1 d") );
      cowfile=${cowfiles[$(($RANDOM % ${#cowfiles[*]}))]}
    fi
    cowsay -f "$cowfile" -W 79 "$@"

{% endhighlight %}


store that as a script (i.e. [`cowsay.sh`][2]), put it in your path, and soon you
will find randomized cow bliss. check it out

{% highlight console %}
    $>fortune | cowsay.sh
 ____________________________________
/ Is that really YOU that is reading \
\ this?                              /
 ------------------------------------
                       \                    ^    /^
                        \                  / \  // \
                         \   |\___/|      /   \//  .\
                          \  /O  O  \__  /    //  | \ \           *----*
                            /     /  \/_/    //   |  \  \          \   |
                            @___@`    \/_   //    |   \   \         \/\ \
                           0/0/|       \/_ //     |    \    \         \  \
                       0/0/0/0/|        \///      |     \     \       |  |
                    0/0/0/0/0/_|_ /   (  //       |      \     _\     |  /
                 0/0/0/0/0/0/`/,_ _ _/  ) ; -.    |    _ _\.-~       /   /
                             ,-}        _      *-.|.-~-.           .~    ~
            \     \__/        `/\      /                 ~-. _ .-~      /
             \____(oo)           *.   }            {                   /
             (    (--)          .----~-.\        \-`                 .~
             //__\\  \__ Ack!   ///.----..<        \             _ -~
            //    \\               ///-._ _ _ _ _ _ _{^ - - - - ~


{% endhighlight %}




P.S. that `$RANDOM` bit looks familiar, where have I seen that before? oh yeah -
it's the only functional part in ["my" Oblique Strategies script][3].

[1]: http://cowsay.org/
[2]: https://github.com/JKirchartz/dotfiles/blob/master/scripts/cowsay.sh
[3]: https://github.com/JKirchartz/dotfiles/blob/master/scripts/ObliqueStrategies
