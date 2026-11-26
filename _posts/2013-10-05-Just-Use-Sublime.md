---
layout: post
title: Just Use Sublime? Why not Vim?
tags: vim article
---


This is commentary on and reply to ["Just Use Sublime Text"](https://delvarworld.github.io/blog/2013/03/16/just-use-sublime-text/), that posits that Vim is simply too difficult, and SublimeText is the way.
As a Vimmer, I enjoy being able to log into almost any Linux/Unix server and finding Vim, it makes life so much easier to just learn to use the tools that are already in the toolbox<!--more-->than to re-invent the wheel.


Without further ado, Let's go blow-for-blow:

> You Need To Read (At Least) Two Books On To Use Well

or practice, and learn new things as you need them; this way might take a little longer to "know" vim, but it's easier to learn by doing than by reading.

> hjkl ... months of frustreation

or play [vimsnake](http://www.vimsnake.com/) for a couple hours (the hard part of this is switching modes in time to turn away from a wall)

> Efficiency from Keeping your Fingers on the Home Row

How long does it take to type 5 characters when your hands are on the home row, and how long does it take you to move your hand to the mouse? How long does it take to visually scan the file to find *where* you want to click? Gamers might have better experience with the mouse, but typists are going to be quicker on the keys.

> Plugins and Extensibility

Plugins take a little lovin' to use; but really a plugin isn't going to help you use vim if you don't know how to use vim. Vim's a (mostly) command line tool; you have to be comfortable with operating in a terminal. A lot of the time vim plugins just rehash built-in functionality (NerdTree etc vs the Shell etc, (`ctrl-Z` & `fg` FTW)) Vanilla vim is bad, only if you don't understand vim.

the vimscript site is ugly, like it's been designed by C programmers and engineers ;), not long ago the entire internet looked like [thok.org](http://thok.org). Alot of vimscripts ARE on [github](https://github.com/search?q=vim&type=Repositories&l=VimL), and if you use git & sub-modules they're [very easy](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) to keep [up-to-date](http://blog.gyoshev.net/2011/08/maintaining-an-up-to-date-vim-configuration-with-git-submodules/).

> vimscript

On no! nobody knows vimscript! Only a small subset of vim users who make plugins! - plugins are nice-to-haves, not necessary features for a text editor. Also, it's not that different from existing languages, most programming uses the same underlying ideas & techniques, and each have their shortcomings; even so, vimscript (aka vimL) is the [14th most popular language on github](http://adambard.com/blog/top-github-languages-for-2013-so-far/).

> collisions

45 plugins? Nobody needs that many, and if they don't work together don't use something else! Stop being lazy and learn what vim itself does, and choose a small set of plugins you will actually learn and use! If you don't use it, you don't need it, and if it's not installed it won't cause problems!

> Vim Is Bad By Design™ 1: Oooooollllld

VIM is designed to edit text over a slow, unreliable connection, from a dumb terminal connected to a mainframe. You can remap leader to anything though, a lot of people use the spacebar for this because it's otherwise unused. Also you don't need `:arglist` to deal with multiple files, you can use `:buffer` to do it too. `:buffers` or `:ls` to show all open buffers, then you can switch with either the buffer number, or the buffer name (using the shorthand for buffer) `:buff 4`. The `arglist` is like a stable subset of `buffers.`

> GUI

Yes, there's no "gui" taking up my screen; So when working remote there's no need to transfer image-data. Vim is a heck of a lot more powerful than pico, which is a gui-like editor in-so-much as it tells you what keystrokes perform which (basic?) functions. (Does pico do much more than it clearly displays? who knows, use vim)

> vim bad at indenting

yes, auto-indenting of large blocks of un-formatted code; but why wouldn't you indent it when you wrote it? Or paste it in with paste-mode so the indents come with it?

> After four years of Vim use, 700 hand written lines in my .vimrc, and 45 plugins...

Oh god! why!? This guy clearly never wanted to learn vim, but to bend it to his will. No wonder he had conflicts. I usually see people using 10 plugins max, and rarely does anybody need a vimrc with over 300 lines, 40 would be better. ([mine's 201](https://github.com/JKirchartz/dotfiles/blob/master/vimrc), but if I ever feel the urge, I'm sure I can remove a lot of it, because they duplicate default values)

having `set -o vi` in bash has been great, I don't need to learn new keybindings for quickly editing commands etc; also I find that if you edit your bash commands, sometimes it becomes impossible to edit the last character `<esc>A` fixes that.

**TL;DR**: VIM is part of a system, that includes the rest of the Shell/OS. They all work together, and can be used together efficiently. Vimscripts are written by a large(ish?) community, so fragmentation's expected. If you really want to use your mouse and the typical GUI experience try gVim or `set mouse=a`.

