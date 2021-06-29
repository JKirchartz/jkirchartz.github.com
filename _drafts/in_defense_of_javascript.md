---
layout: post
title: In Defense of Javascript
subtitle: a critique of people trying to "improve javascript" and destroying the world in the process
published: false
tags: article, 100 days to offload
projectImg: //i.imgur.com/2meSgMf.jpg
---

Most people's problems with javascript is that it's a "bad programming
language." Here's a few of the more popular boilerplate reasons:

1. It was made in 10 days
2. Dynamic typing
3. Double Precision Standard & Floating Point
4. It's quirky
5. It's not actually Java

Yes, [Eich admits the prototype was built in 10 contiguous days][3], in
May of 1995. This was 26 years and 12 ECMAScript versions ago.

[Javascript: The Definitive Guide][5] has been in publication since 1996, and
Douglas Crockford published [Javascript: The Good Parts][4] in 2008, so it's
safe to assume we've seen these books compared to one another for at least a
decade. Surely this image is proof that it's best to avoid Javascript, but
Crockfords introduction disagrees:

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
>
> This book will not attempt to fully describe the language. Instead, it will
> focus on the good parts with occasional warnings to avoid the bad. The subset
> that will be described here can be used to construct reliable, readable
> programs small and large.  By focusing on just the good parts, we can reduce
> learning time, increase robustness, and save some trees.

Unfortunately, there aren't any newer versions of "The Good Parts" and the es5
spec was released in 2009 (and reached cross-browser compatibility in 2013)

Every time there's a take-down of Javascript the reasoning seems to be that
they don't like it because it's [not their preferred programming language and
has it's own set of quirks instead][1], and they're different from the quirks
of that person's preferred language. [Javascript is weird][2], but that's not
unusal for a programming language.

It's popular to bash on Javascript because it's the defacto "Language of the
Web" so everyone who codes on the web has to touch it eventually, and learning
a new programming language is when quirks shine  I understand that not everyone
is a Computer Science major, and not everyone wants to be a polyglot
programmer[^2]! To paraphase Bill Gates, "One programming language should be
enough for anyone" - I mean, THAT's why node.js is so popular, right?  You can
run your JS in the browser OR server - one language to rule them all!

### Ways people have tried to "fix" Javascript:

1. Coffeescript (ruby-like)
2. Typescript (C#-like)
3. PureScript (Haskell-like)
3. ClojureScript (Lisp-like)
4. Flow (add strong types to JS)
5. JSX (add html & css to JS)
6. asm.js (Compile C to JS)
7. Dart (Compile C to JS)
8. WebAssembly/WASM (Compile C/Rust/anything to something that works alongside JS)

These all tend to fall into two camps: complicate javascript or avoid it.  But
none of these systems has fixed Javascript because they still ultimately they
all depend on Javascript, to sideload the real code, or interact with the dom,
or whatever. The compilers &amp; transpilers produce javascript, and write it
with their own quirks to "get around" javascript's quirks.


I may be an old fogey, but before 2012, we didn't need map files! We needed
de-obsfucators and reverse engineering skills. Heck, we didn't even need a
Shadow DOM or any other virtual DOM!

https://medium.com/javascript-scene/you-might-not-need-typescript-or-static-types-aa7cb670a77b

https://www.freecodecamp.org/news/stop-bringing-strong-typing-to-javascript-4da0666cba6e/


[^1]: Brendon Eich, creator of Javascript
[^2]: even some comp-sci majors


[1]: https://www.destroyallsoftware.com/talks/wat
[2]: https://jsisweird.com/
[3]: https://www.youtube.com/watch?v=GxouWy-ZE80
[4]: https://amzn.to/36dvvzn
[5]: https://amzn.to/3A6In7X


I’m publishing this as part of 100 Days To Offload. You can join in yourself by
visiting <https://100daystooffload.com>



<!-- https://frontendmasters.com/courses/javascript-the-good-parts/audience-questions/ -->
