---
layout: post
title: "VIM quick-start/cheat-sheet &amp; links"
published: false
tags:
- tutorial
---

If you've been [following me](http://twitter.com/jkirchartz) for a while, you might know my editor of choice is VIM,
it's very clean. There's nothing there to get in your way, except your own limitations, and those limitations can be
destroyed through practice. Havn't tried vim yet? What are you waiting for?

Vim is a text editor written by Bram Moolenaar and first released publicly in 1991. It is commonly found on unix-based operating systems. VIM is based off an older text editor, vi, and it's name is an acronym for Vi-Improved.
With vim Your fingers never have to leave the keyboard to command great power. The learning curve is a little steep but you can very quickly pick up new skills as you need them. The basic premise is that there is an Input mode
and a Command mode. By default you start in command mode, here you can move around the document, search, and do a fair bit of editing quickly. Insert mode is designed for adding (and removing) text, it's just like a normal text
editor.

Quick Start/Cheat Sheet
-----------

###From the Command Line

* type "vim" or "vi" into the command line to create a new file
* type "vim /path/to/file.name" to open an existing file. 
* to open multiple files list them like `vim file1.txt file2.sh`
    1. you can switch to the next open file with the command `:bn`

###Working in VIM

* hit "i" to switch from command mode to input mode
* hit "v" to switch from command mode to visual mode
* hit "esc" to switch back to command mode

###VIM Commands
* type ":wq" or "ZZ" to save and quit
* type ":q!" to quit without saving
* moving the cursor
    1. `j` move down one line
    1. `k` move up one line
    1. `h` move left one character
    1. `l` move right one character
    1. to move to line 88 hit `88G` or `88gg`
    1. move to the begining of a file hit `gg`
    1. move to the end of the file hit `G`
    1. hitting `%` while the cursor is on a bracket like `[({})]` will find the matching bracket
* to delete a character hit `x`
* to cut a line hit `dd`
* to copy a line hit `yy`
* to cut or copy multiple lines put a number before the command like `5dd`
    1. you can put a number before most commands to repeat them X many times.
* press `p` to paste after the current line
* press `P` to pase before the current line
* to delete from the cursor to the end of the line hit `d$`
* to delete from the cursor to the beginning of the line hit `d0`
* in command mode to search for `apple` type `/apple` and hit enter
    1. to look for the next occurance hit `n`
* in command mode to find and replace the first occurance type `:s/original/replacement/`
    1. when searching you can use regular expressions
* in command mode to find and replace all occurances type `:s/original/replacement/g`


###VIM tips
* If the file is owned by root and you opened it as another user, you can escalate privileges and save with `:w !sudo tee %`
* the delimiter when using `:s` doesn't have to be `\` you can try `%` or `_` if you want to avoid fences like in `:s/\/usr\/local\//\/opt\//`
* You can store a cursor location in a mark, vim allows 26 of these, you can set a mark with command `m` followed by a letter like `ma`
    1. you can move to a line containing a mark using the `'` (single quote) command `'a` moves to the line containing the mark labeled `a`
    1. you can move to the exact location of the mark using the ``` (backquote) command ``a` moves to the mark labeled `a`
    1. these are "movements" that can be combined with other statements like `d`a` to cut text from the cursor's location to the mark labeled `a`

Going Further
------------
Vim is highly customizable, you can set shortcuts and preferences in the `.vimrc` file, usually located in your home directory.
There are a [ton of plugins (aka scripts)](http://www.vim.org/scripts/) available too. They're easy to manage with other scripts
like [Pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](https://github.com/gmarik/vundle). 

If you want to get a headstart, my [dotfiles are available on github](https://github.com/jkirchartz/dotfiles), but there are a lot of people 
doing that lately, for example there's a very nice VIM Distribution named [Janus](https://github.com/carlhuda/janus) that's worth a look.

Links
------------
* [VIM docs](http://www.vim.org/docs.php) 
* [VIM Cheat-sheet](http://michael.peopleofhonoronly.com/vim/)
* [VIM Keyboard Cheat-sheet](http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png)
* [Leaning Vim the Pragmatic Way](http://jrmiii.com/2009/03/06/learning-vim-the-pragmatic-way.html)
* [VIM Regex](http://vimregex.com/)
* [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
* [Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
* [Vimbits](http://vimbits.com/)
* [VI Cheat Sheet](http://www.lagmonster.org/docs/vi.html)
* [Learning Vi & Vim editors (O'Reilly)](http://www.amazon.com/gp/product/059652983X)
* [Download Vim](http://www.vim.org/download.php)
* [Stack Overflow Question: What is your most productive shortcut with Vim?](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118)

