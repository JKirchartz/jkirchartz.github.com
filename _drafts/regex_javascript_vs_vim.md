---
layout: post
title: "Regex: JavaScript vs Vim"
published: false
tags: article
---

Regular Expressions are a powerful tool for string matching and manipulation,
programmers of every stripe find use for it nearly every day, [even if it may
be foolish.][1] The problem is regex engines are implemented differently.  PHP,
Ruby, Python &amp; Perl all have implementations different from those in unix
tools like awk and grep, as explained by Russ Cox in his article [Regular
Expression Matching Can Be Simple And Fast][2]. Some might have noticed
[regex101.com][3] has a switch to choose between PHP, Python and JavaScript
implementations, so it's not just a divide between tools, but between engine
capabilities as well. I'd like to compare [vim][4]'s regex engine to that used
in [JavaScript][5] &mdash;because at the time of writing my JavaScript-fu is
effecting my vim-fu.


| VIM      | JavaScript | Description              |
|----------|------------|--------------------------|
| `\<`     | `\b`       | Beginning word boundary  |
| `\>`     | `\b`       | Ending word boundary     |
| `\zs`    | n/a        | Start of match           |
| `\ze`    | n/a        | End of match             |
| `\%(`    | `(?:`      | Non-capturing group      |
| `\|`     | `          | `                        |
| `\+`     | `+`        | One or more              |
| `\?`     | `?`        | Zero or one              |
| `\{m,n}` | `{m,n}`    | Repetition range         |
| `\(`     | `(`        | Capturing group start    |
| `\)`     | `)`        | Capturing group end      |
| `\1`     | `\1`       | Backreference to group 1 |

You've probably noticed something similar amongst all these vim commands, that
they start with `\`, which is an escape character; That's because Vim's regex
implementation is very flexible because it used Magic.

| Vim's Magic Words | Description                                |
|-------------------|--------------------------------------------|
| `\v`              | Very magic: most characters are special    |
| `\m`              | Magic: default Vim regex mode              |
| `\M`              | Nomagic: fewer characters are special      |
| `\V`              | Very nomagic: almost everything is literal |

If you want to search your document for a regex string using regex it might be
a nightmarish and daunting tasks unless you use `\V` "Very No Magic", in which
case you can search for regex without any of the characters being interpreted
as regex.

But don't take my word for it, for another look at Vim's regular expressions
check out [The Valuable Dev: The Basics of Vim Regular
Expressions](https://thevaluable.dev/regular-expression-basics-vim-grep/)

[1]: http://stackoverflow.com/a/1732454/276250
[2]: https://swtch.com/~rsc/regexp/regexp1.html
[3]: http://regex101.com
[4]: http://vimregex.com/
[5]: http://www.ecma-international.org/ecma-262/5.1/#sec-15.10.1
