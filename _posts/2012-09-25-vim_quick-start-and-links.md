---
layout: post
title: VIM quick-start &amp; links 
published: false
tags:
- tutorial
---

VIM
==========

What is VIM?
----------
Vim is a text editor written by Bram Moolenaar and first released publicly in 1991. It is commonly found on unix-based operating systems. VIM is based off an older text editor, vi, and it's name is an acronym for Vi-Improved.


Quick Start
-----------
* type "vim" or "vi" into the command line to create a new file
* type "vim /path/to/file.name" to open an existing file. 
* hit "i" to switch from command mode to input mode 
* hit "esc" to switch back to command mode
* in command mode type ":wq" to save and quit
* in command mode type ":q!" to quit without saving
* to use the cursor in command mode
    * use to j move down one line
    * k move up one line
    * h move left one character
    * l move right one character
    * to move to line 88 hit "88G" or "88gg"
    * hitting "%" while the cursor is on a bracket [({})] will find the matching bracket
* in command mode to delete a character hit "x"
* in command mode to cut a line hit "dd"
* in command mode to copy a line hit "yy"
* to cut or copy multiple lines put a number before the command like "5dd"
* press "p" to paste after the current line
* press "P" to pase before the current line
* in command mode to search for "apple" type "/apple"
* to look for the next occurance hit "n"
* in command mode to find and replace the first occurance type ":s/original/replacement/"
    * when searching you can use regex
* in command mode to find and replace all occurances type ":s/original/replacement/g"
* If the file is owned by root and you opened it as another user, you can escalate privileges and save with ":w !sudo tee %"


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

