---
layout: post
title: In Defense of JavaScript
tags: article, 100 days to offload
projectImg: //i.imgur.com/2meSgMf.jpg
---

I'm bored of the generic bashing on JavaScript. Everyone has done it, it's
"Language of the Web" and we're online where the memes are. Memes die hard.
Most critiques of JavaScript cover the same well-worn paths<!-- more -->

1. It was made in 10 days
2. Dynamic typing
3. Double Precision Standard & Floating Point
4. It's quirky
5. It's not actually Java

Yes, Brendan Eich[^1] confesses that the prototype named [Mocha was built in 10 contiguous
days][3] in May of 1995; but it developed further and 3 months later JavaScript
was released in the Netscape browser's 2.0 beta. I'm not going to [recount the
history of the web][8], so to make a long story short, Microsoft shortly
entered the browser market, the [browser wars][7] ensued, and the first
JavaScript standard was released in 1997. At the time of this writing we find
ourselves 24 years and 11 EcmaScript recommendations later[^3].

[JavaScript: The Definitive Guide][5] has been in publication since 1996, and
is currently in it's seventh edition; and Douglas Crockford published
[JavaScript: The Good Parts][4] in 2008, so it's safe to assume we've seen
these books compared to one another for at least a decade. Surely this image is
proof that it's best to avoid JavaScript, but Crockford's introduction
disagrees:

> Fortunately, JavaScript has some extraordinarily good parts. In JavaScript,
> there is a beautiful, elegant, highly expressive language that is buried
> under a steaming pile of good intentions and blunders. The best nature of
> JavaScript is so effectively hidden that for many years the prevailing
> opinion of JavaScript was that it was an unsightly, incompetent toy. My
> intention here is to expose the goodness in JavaScript, an outstanding,
> dynamic programming language. JavaScript is a block of marble, and I chip
> away the features that are not beautiful until the language’s true nature
> reveals itself.  I believe that the elegant subset I carved out is vastly
> superior to the language as a whole, being more reliable, readable, and
> maintainable.


In the next paragraph he continues and explains the discrepancy in size between these books.


> This book will not attempt to fully describe the language. Instead, it will
> focus on the good parts with occasional warnings to avoid the bad. The subset
> that will be described here can be used to construct reliable, readable
> programs small and large.  By focusing on just the good parts, we can reduce
> learning time, increase robustness, and save some trees.

Unfortunately there aren't any newer versions of The Good Parts[^4], the es5 spec
was released in 2009 right after this was published, including a lot of Mr
Crockford's ideas, and in 2013 reached cross-browser compatibility.
Fortunately, JavaScript isn't bad enough to scare Doug away, he's still a
leader in the community working hard to make JavaScript better.  Everyone wants
to get a little of Crockford's mojo so his critiques and techniques are often
cited.

Every time there's a take-down of JavaScript you will undoubtedly find that
JavaScript [not their preferred programming language and has it's own set of
quirks instead][1], and they're different from the quirks of that person's
preferred language. [JavaScript is weird][2], but that's not [abnormal for a
programming language.][9] JavaScript is a community language, so there's been
many "fixes" in the specifications over the years and enough so that it's now
it's become like an [assembly language for the web][10]. In [Crockford's latest
book][13] he talks about making a language that compiles to JS, and it turns
out there are some other languages that compile to JavaScript:

1. Coffeescript (ruby-like)
2. Typescript (C#-like)
3. PureScript (Haskell-like)
3. ClojureScript (Lisp-like)
4. Flow (add strong types to JS)
5. JSX (add html & css to JS)
6. asm.js (Compile C to JS)
7. Dart (Compile C to JS)
8. WebAssembly/WASM (Compile C/Rust/anything to something that works alongside JS)
9. [and many more&hellip;][6]

These all tend to fall into two camps: complicate JavaScript or disguises it.
But none of these systems has fixed JavaScript because ultimately they still
all depend on it to sideload the it or interact with the DOM or what have you.
The compilers &amp; transpilers produce JavaScript, and you have to navigate
these languages' quirks to have them get around JavaScript's quirks.  I haven't
noticed any reduction in bugs using these 'better' versions of JavaScript, and
I'm [not][11] [alone][12].

I may be an old fogey, but before 2017 or so we didn't need map files! We
needed de-obfuscators and reverse engineering skills. Heck, we didn't even need
a Shadow DOM or any other virtual DOM[^5]! In my curmudgeony old ways I'm
inclined to say that people would benefit from learning how to write good
JavaScript instead of writing it by proxy, but even [C used to have
linters.][14] The language is evolving like it should be, or as it's expected
to, the way other open standards have developed: Through maddening chaos.

When push comes to shove JavaScript is neither Good or Evil, it can't be, it's
a tool that can be used any way you'd like; and you best get used to it because
it's not going away any time soon.


[^1]: Brendon Eich, inventor of JavaScript
[^2]: even some comp-sci majors
[^3]: Not to mention the rise and fall of Flash/ActionScript.
[^4]: the "Evil" parts are only about 5 pages in this book, I'd imagine this section will grow in the next edition
[^5]: to paraphrase Bill Gates "one DOM should be enough for anyone!"


[1]: https://www.destroyallsoftware.com/talks/wat
[2]: https://jsisweird.com/
[3]: https://www.youtube.com/watch?v=GxouWy-ZE80
[4]: https://amzn.to/36dvvzn
[5]: https://amzn.to/3A6In7X
[6]: https://github.com/jashkenas/coffeescript/wiki/List-of-languages-that-compile-to-JS
[7]: https://medium.com/@adamjgordon24/browser-wars-episode-i-the-neutering-of-an-underdog-40e4a500ac41
[8]: https://thehistoryoftheweb.com/timeline/
[9]: https://esolangs.org/wiki/Main_Page
[10]: https://www.hanselman.com/blog/javascript-is-assembly-language-for-the-web-part-2-madness-or-just-insanity
[11]: https://medium.com/javascript-scene/you-might-not-need-typescript-or-static-types-aa7cb670a77b
[12]: https://www.freecodecamp.org/news/stop-bringing-strong-typing-to-javascript-4da0666cba6e/
[13]: https://amzn.to/3qDbNGw
[14]: https://en.wikipedia.org/wiki/Lint_(software)


*I’m publishing this as part of 100 Days To Offload. You can join in yourself by
visiting <https://100daystooffload.com>*

