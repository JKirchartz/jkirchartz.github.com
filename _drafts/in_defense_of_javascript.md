---
layout: post
title: In Defense of Javascript
subtitle: a critique of people trying to "improve javascript" and destroying the world in the process
published: false
tags: article, 100 days to offload
---

Most people's problems with javascript is that it's a "bad programming
language." There's a litany of boilerplate reasons:

1. It was made in 10 days
2. Dynamic typing
3. Double Precision Standard
4. It's quirky
5. It's not actually Java

Every time there's a take-down of Javascript the reasoning seems to be that
they don't like it because it's not their preferred programming language and
has it's own set of quirks instead, and they're different from the quirks of
that person's preferred language. Javascript does do some [really weird stuff][1],


 everyone is a Comp-Sci major, not everyone wants to
be a polyglot programmer to paraphase Bill Gates, "One programming language
should be enough for anyone" - I mean, THAT's why node.js is so popular, right?
You can run your JS in the browser OR server - one language to rule them all!

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
de-obsfucators and reverse engineering skills.

https://medium.com/javascript-scene/you-might-not-need-typescript-or-static-types-aa7cb670a77b

https://www.freecodecamp.org/news/stop-bringing-strong-typing-to-javascript-4da0666cba6e/






[1]: https://www.destroyallsoftware.com/talks/wat


I’m publishing this as part of 100 Days To Offload. You can join in yourself by
visiting <https://100daystooffload.com>

