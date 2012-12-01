---
layout: post
title: "VIM quick-start &amp; links"
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

Quick Start
-----------

###From the Command Line

* type "vim" or "vi" into the command line to create a new file
* type "vim /path/to/file.name" to open an existing file. 
* to open multiple files list them like `vim file1.txt file2.sh`
    * you can switch between open files with the command `:bn`

###Working in VIM

* hit "i" to switch from command mode to input mode 
* hit "esc" to switch back to command mode

###VIM Commands
* type ":wq" or "ZZ" to save and quit
* type ":q!" to quit without saving
* moving the cursor
    * `j` move down one line
    * `k` move up one line
    * `h` move left one character
    * `l` move right one character
    * to move to line 88 hit `88G` or `88gg`
    * hitting `%` while the cursor is on a bracket like `[({})]` will find the matching bracket
* to delete a character hit `x`
* to cut a line hit `dd`
* to copy a line hit `yy`
* to cut or copy multiple lines put a number before the command like `5dd`
    * you can put a number before most commands to repeat them X many times.
* press `p` to paste after the current line
* press `P` to pase before the current line
* to delete from the cursor to the end of the line hit `d$`
* to delete from the cursor to the beginning of the line hit `d0`
* in command mode to search for `apple` type `/apple`
    * to look for the next occurance hit `n`
* in command mode to find and replace the first occurance type `:s/original/replacement/`
    * when searching you can use regular expressions
* in command mode to find and replace all occurances type `:s/original/replacement/g`


###VIM tips
* If the file is owned by root and you opened it as another user, you can escalate privileges and save with `:w !sudo tee %`


Going Further
------------
Vim is highly customizable, you can set shortcuts and preferences in the `.vimrc` file, usually located in your home directory.
There are a [ton of plugins (aka scripts)](http://www.vim.org/scripts/) available too. They're easy to manage with other scripts
like [Pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](https://github.com/gmarik/vundle). 

If you want to get a headstart, my [dotfiles are available on github](https://github.com/jkirchartz/dotfiles)

Links
------------
* [VIM docs](http://www.vim.org/docs.php) 
* [VIM Cheat-sheet](http://michael.peopleofhonoronly.com/vim/)
* [Leaning Vim the Pragmatic Way](http://jrmiii.com/2009/03/06/learning-vim-the-pragmatic-way.html)
* [VIM Regex](http://vimregex.com/)
* [Vim Tips Wiki](http://vim.wikia.com/wiki/Vim_Tips_Wiki)
* [Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
* [Vimbits](http://vimbits.com/)
* [VI Cheat Sheet](http://www.lagmonster.org/docs/vi.html)
* [Learning Vi & Vim editors (O'Reilly)](http://www.amazon.com/gp/product/059652983X)
* [Download Vim](http://www.vim.org/download.php)

