---
layout: post
title: Unix as a CMS
date: 2018-09-11 18:22 -0400
---

Recently I've discovered the [tildeverse][1], a loose federation of *nix servers inpired by [tilde.club][2] offering a shell account
where you can host a site, play games, and participate in a community of like-minded individuals (you know, the sort who think having a
unix account would be fun.) This article will show a method to create these pages more efficiently.<!--more-->

As tradition dictates, these sites are usually hand-written html hosted in the `~/public_html` directory nested inside your home directory (for which `~` is a shortcut)
this site is then accessible at `<domain>.<tld>/~<username>`, which all together explains the "tilde" in tildeverse.

Handcoding HTML is fun, but if you'd like to make a bunch of pages without worrying about markup, [`markdown`][3] is one of the plain-text formats you might choose.
[Rendering markdown can be done with pure bash][4], but [`pandoc`][5] is more powerful - it may not be available on all systems, but the beauty of the tildeverse if you can ask your admin to install it and they probably will.

Make is a program that reads a `Makefile` and follows its instructions to compile code, this may be C/C++,
but here I will be using it to read a directory of markdown files and generate HTML.
There are a few different versions, but here I will assume [Gnu Make][6] is installed.
In the below script I set the shell, use `wildcard` to find all markdown files, `subst` and `patsubst` to generate a list of html files to generate, and finally an `all` directive to put the outputs together.
Running `make` at the command line will take each `md` file process it with pandoc and create a `html` file, this is then moved to the appropriate `public_html` directory (which we will assume is one directory higher than where you keep your unpublished markdown files.)
If you're using `vim` as your text editor the command `:make` can also be used.

{% gist 51837825945a6d1509d3f11b487a3b09 %}

It is possible to tell pandoc to include certain CSS files, but providing your own template will give more control and IMHO make customization easier.

Pandoc will also apply certain metadata provided in [YAML frontmatter][7] in a markdown file, and place it as defined in the above layout.
None of these options are required, but show how flexible this system is.

```yaml
---
author: <Your Name>
author-meta: <Your Name>
title: <Document Title>
subtitle: <Document Subtitle>
lang: <document language attibute for html tag>
date: <Todays Date>
date-meta: <Todays Date>
keywords:
- <keyword 1>
- <keyword 2>
- <etc>
css:
- <path to css 1>
- <etc>
include-after:
- <copyright notice>
- <script tags>
- <etc>
---
```

[View this post on tilde.town][9]


[1]: https://tilde.team/wiki/?page=other-tildes
[2]: http://tilde.club/
[3]: https://daringfireball.net/projects/markdown/
[4]: https://github.com/chadbraunduin/markdown.bash
[5]: http://pandoc.org/
[6]: https://www.gnu.org/software/make/
[7]: http://yaml.org/
[8]: https://tilde.town/~kirch/unix-as-a-cms.html
