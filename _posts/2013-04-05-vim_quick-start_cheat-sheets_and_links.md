---
layout: post
title: "VIM quick-start/cheat-sheet &amp; links"
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

* <p>type "vim" or "vi" into the command line to create a new file
* <p>type "vim /path/to/file.name" to open an existing file. 
* <p>to open multiple files list them like `vim file1.txt file2.sh`
    * <p>you can switch to the next open file with the command `:bn`

###Working in VIM

* <p>hit "i" to switch from command mode to input mode
* <p>hit "v" to switch from command mode to visual mode
* <p>hit "esc" to switch back to command mode

###VIM Commands
* <p>type ":wq" or "ZZ" to save and quit
* <p>type ":q!" to quit without saving
* <p>moving the cursor
    * <p>`j` move down one line
    * <p>`k` move up one line
    * <p>`h` move left one character
    * <p>`l` move right one character
    * <p>to move to line 88 hit `88G` or `88gg`
    * <p>move to the begining of a file hit `gg`
    * <p>move to the end of the file hit `G`
    * <p>hitting `%` while the cursor is on a bracket like `[({})]` will find the matching bracket
* <p>to delete a character hit `x`
* <p>to cut a line hit `dd`
* <p>to copy a line hit `yy`
* <p>to cut or copy multiple lines put a number before the command like `5dd`
    * <p>you can put a number before most commands to repeat them X many times.
* <p>press `p` to paste after the current line
* <p>press `P` to pase before the current line
* <p>to delete from the cursor to the end of the line hit `d$`
* <p>to delete from the cursor to the beginning of the line hit `d0`
* <p>in command mode to search for `apple` type `/apple` and hit enter
    * <p>to look for the next occurance hit `n`
* <p>in command mode to find and replace the first occurance type `:s/original/replacement/`
    * <p>when searching you can use regular expressions
* <p>in command mode to find and replace all occurances type `:s/original/replacement/g`


###VIM tips
* <p>If the file is owned by root and you opened it as another user, you can escalate privileges and save with `:w !sudo tee %`
* <p>the delimiter when using `:s` doesn't have to be `\\` you can try `%` or `\_` if you want to avoid fences like in `:s/\/usr\/local\//\/opt\//`
* <p>You can store a cursor location in a mark, vim allows 26 of these, you can set a mark with command `m` followed by a letter like `ma`
    * <p>you can move to a line containing a mark using the `'` (single quote) command `'a` moves to the line containing the mark labeled `a`
    * <p>you can move to the exact location of the mark using the <code>`</code> (backquote) command <code>`a</code> moves to the mark labeled `a`
    * <p>these are "movements" that can be combined with other statements like <code>d`a</code> to cut text from the cursor's location to the mark labeled `a`

Going Further
------------
Vim is highly customizable, you can set shortcuts and preferences in the `.vimrc` file, usually located in your home directory.
There are a [ton of plugins (aka scripts)](http://www.vim.org/scripts/) available too. They're easy to manage with other scripts
like [Pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](https://github.com/gmarik/vundle). 

If you want to get a headstart, my [dotfiles are available on github](https://github.com/jkirchartz/dotfiles), but there are a lot of people 
doing that lately, for example there's a very nice VIM Distribution named [Janus](https://github.com/carlhuda/janus) that's worth a look.

Links
------------
* <p>[VIM docs](http://www.vim.org/docs.php) 
* <p>[VIM Cheat-sheet](http://michael.peopleofhonoronly.com/vim/)
* <p>[VIM Keyboard Cheat-sheet](http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png)
* <p>[Leaning Vim the Pragmatic Way](http://jrmiii.com/2009/03/06/learning-vim-the-pragmatic-way.html)
* <p>[VIM Regex](http://vimregex.com/)
* <p>[Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
* <p>[Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
* <p>[Vimbits](http://vimbits.com/)
* <p>[VI Cheat Sheet](http://www.lagmonster.org/docs/vi.html)
* <p>[Learning Vi & Vim editors (O'Reilly)](http://www.amazon.com/gp/product/059652983X)
* <p>[Download Vim](http://www.vim.org/download.php)
* <p>[Stack Overflow Question: What is your most productive shortcut with Vim?](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118)

