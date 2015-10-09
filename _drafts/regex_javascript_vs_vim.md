---
layout: post
title: Regex: Javascript vs Vim
published: false
tags: article
---

Regular Expresssions are a powerful tool for string matching and manipulation, 
programmers of every stripe find use for it nearly every day, [even if it may be 
foolish.][1] The problem is regex engines are implemented very differently. 
PHP, Ruby, Python \& Perl all have implementations very different from those 
found in unix tools like awk and grep, as explained by Russ Cox in his article 
[Regular Expression Matching Can Be Simple And Fast][2]. Some might have noticed
[regex101.com][3] has a switch to choose between PHP, Python and Javascript 
implementations, so it's not just a divide between tools, but between engine 
capabilities as well. In this article I'd like to compare [vim][4]'s regex 
engine to that used in [javascript][5] (because my javascript-fu is effecting my 
vim-fu.)



|VIM|Javascript|
|---|----------|
|`\<`|`\b`|
|`\>`|`\b`|



[1]: http://stackoverflow.com/a/1732454/276250
[2]: https://swtch.com/~rsc/regexp/regexp1.html
[3]: http://regex101.com
[4]: http://vimregex.com/
[5]: http://www.ecma-international.org/ecma-262/5.1/#sec-15.10.1
