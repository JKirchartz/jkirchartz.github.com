---
layout: post
title: VIM quick-start, cheat-sheet, and links
tags: tutorial article
---

If you've been [following me](http://twitter.com/jkirchartz) for a while, you might know my editor of choice is VIM,
it's very clean. There's nothing there to get in your way, except your own limitations, and those limitations can be
destroyed through practice. Haven't tried vim yet? What are you waiting for? <!--more-->

Vim is a text editor written by Bram Moolenaar and first released publicly in 1991.
It is commonly found on unix-based operating systems.
VIM is based off an older text editor, vi, and it's name is an acronym for Vi-Improved.
With vim Your fingers never have to leave the keyboard to command great power. The learning curve is a little steep but you can very quickly pick up new skills as you need them. The basic premise is that there is an Input mode
and a Command mode. By default you start in command mode, here you can move around the document, search, and do a fair bit of editing quickly. Insert mode is designed for adding (and removing) text, it's just like a normal text
editor.

## Quick Start/Cheat Sheet

Vim commands are more of a language than a list of commands you need to use.
<!--
vim is a language of operators (like delete yank change uppercase rot13) and motions (word til X paragraph)
-->

### From the Command Line

* type "vim" into the command line to create a new untitled file
* type "vim /path/to/file.name" to open an existing file. (if the file doesn't exist, this creates it)
* to open multiple files list them like `vim file1.txt file2.sh` they're placed into buffers
    * you can switch to the next open file with the command `:bn`, or the previous one with `:bp`, to move to the next or previous buffer.
    * to open in a split window `vim -o file.type file2.type file3.type` (lower case "o" for horizontal, uppercase for vertical split)
* open a file & jump to a particular line with `vim +10 file.type` for the 10th line (`+` alone will jump to the end of the file)
* You can run vim functions directly from the command line `vim +FunctionName +qall` (`qall` tries to quit all, but refers to the user to accept or reject changes made with a standard `:w`/`q!`)
* open a file & jump to a particular word or phrase with `vim -c "/searchstring" file.type` (you can execute other commands with the `-c` flag too)
* find the differences between two files with `vim -d file.v1 file.v2` (this works like vimdiff)

## Working with VIM modes

* hit "i" to switch from command mode to input mode
* hit "v" to switch from command mode to visual mode
* hit "esc" to switch back to command mode

note: 'i' doesn't mean "enter insert mode" so much as it is a command to "insert the following text until you hit <kbd>ESC</kbd>"
Also, "command mode" is often referred to as "normal mode," because for a lot of tasks, you will probably want to use a bunch of commands, instead of writing a bunch of stuff in input mode.

### VIM Command/Normal-mode

* type ":wq" or "ZZ" to save and quit
* type ":q!" to quit without saving
* moving the cursor (basic movements)
    * `j` move down one line
    * `k` move up one line
    * `h` move left one character
    * `l` move right one character
* to move to line 88 hit `88G` or `88gg`
* move to the begining of a file hit `gg`
* move to the end of the file hit `G`
* move one word forward with `w`
* move one word backward with `b`
* move to the end of the line with `$`
* move to the begining of the line with `0`
* move to the first character of the line with `^`
* hitting `%` while the cursor is on a bracket like `[({})]` will find the matching bracket
* to delete a character hit `x`
* to cut a line hit `dd`
* to copy a line hit `yy`
* to cut or copy multiple lines put a number before the command like `5dd`
    * you can put a number before most commands to repeat them X many times.
* press `p` to paste after the current line
* press `P` to pase before the current line
* to delete from the cursor to the end of the line hit `d$`, for example, or any other movement key (wbhjkl...)
* in command mode to search for `apple` type `/apple` and hit enter
    * to look for the next occurance hit `n`
* in command mode to find and replace all occurances in a line type `:s/original/replacement/g`
    * when searching you can use regular expressions
* in command mode to find and replace all occurances in a file type `:%s/original/replacement/g`
* for an interactive history of commands use `q:`
* for an interactive history of searches use `q/` or `q?`)
* need more info? try `:help` there's a wealth of information there
    * you can get more details about the help command with `:help help`
    * you can find an index of commands with `:help index`

### VIM Input-mode

I'm not sure how useful these are in gvim, but these should work if you're running in a terminal.

* alt/meta+normal command usually works
    * `alt+hjkl` offers the standard movements
    * `alt+o` opens a new line below the current one
    * `alt+A` appends to the end of the current line
    * `alt+p` to paste
    * `alt+R"` to paste from register `"`, for example, or use and other register.

### VIM tips

* If the file is owned by root and you opened it as another user, you can escalate privileges and save with `:w !sudo tee %`
* You can insert a file below the cursor with `:r /path/to/file.txt` or if you don't supply a file it will insert the current file below the cursor.
* the delimiter when using `:s` doesn't have to be `/` you can try `%` or `\_` if you want to avoid fences like in `:s/\/usr\/local\/bin/\/common\/bin/` you can use `:s#/user/local/bin#/common/bin#`
* unless you set a `equalprg` in your vimrc, you can auto-indent with `=`
    * to autoindent an entire file use `gg=G` (could have "unexpected" results)
    * to autoindent the current line `==`
    * to autoindent this line and the one after it is `=j` where `j` is a movement key
    * if you select a section with visual mode you can indent just that selection with `=`
* You can store a cursor location in a mark, you can set a mark with command `m` followed by a letter like `ma`, it accepts [A-Za-z] so you get 52 different marks.
    * you can move to a line containing a mark using the `'` (single quote) command `'a` moves to the line containing the mark labeled `a`
    * you can move to the exact location of the mark using the `` ` `` (backquote) command `` `a `` moves to the mark labeled `a`
    * these are "movements" that can be combined with other statements like `` d`a `` to cut text from the cursor's location to the mark labeled `a`
* You can make macros with the `q` command,
    * hit `qa` to create a macro named `a` (should show a record indicator) enter a series of commands and  hit `q` again to stop recording.
    * hit `@a` to execute the macro named `a`, you can execute the command multiple times in the standard way `23@a` will repeat it 23 times.
    * You can execute a register as a macro with `@A` for register `A`, for example, or use any other register.
* You can execute a register as an ex command with `:@A` for register `A`, for example, or use any other register.

## Going Further

Vim is highly customizable, you can set shortcuts and preferences in the `.vimrc` file, usually located in your home directory.
There are a [ton of plugins (aka scripts)](http://www.vim.org/scripts/) available too. They're easy to manage with other scripts
like [Pathogen](https://github.com/tpope/vim-pathogen), [Vundle](https://github.com/gmarik/vundle), or [vim-plug](https://github.com/junegunn/vim-plug). I just switch from vundle to vim-plug because it makes it easier to configure your plugins and does it a lot faster.

If you want to get a headstart, my [dotfiles are available on github](https://github.com/jkirchartz/dotfiles), but there are a lot of people
doing that lately, so look around. Also there's a few very nice VIM Distributions like [Janus](https://github.com/carlhuda/janus), [SPF13-vim](https://github.com/spf13/spf13-vim), and [dotvim](https://github.com/bling/dotvim) that have a lot of plugins and a nice vimrc right out of the box, definitely worth a look.

:godmode:

## Links

* [Vim Interactive Tutorial](http://www.openvim.com/tutorial.html) (try it now!)
* [VIM docs](http://www.vim.org/docs.php)
* [Vim Galore](https://github.com/mhinz/vim-galore) ("Everything you need to know about vim")
* [Vimbits](http://vimbits.com/)
* [Vimcasts](http://vimcasts.org/) (video tutorials)
* [usevim](http://usevim.com/)
* [Today I Learned: vim](http://tilvim.com/)
* [vim awesome](http://vimawesome.com/)
* [The Patient Vimmer](http://romainl.github.io/the-patient-vimmer/)
* [Michael's VIM Cheat-sheet](http://michael.peopleofhonoronly.com/vim/)
* [Kendall's VIM Cheat-sheet](http://www.angelwatt.com/coding/notes/vim-commands.html)
* [VIM Keyboard Cheat-sheet](http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png)
* [Leaning Vim the Pragmatic Way](http://jrmiii.com/2009/03/06/learning-vim-the-pragmatic-way.html)
* [Learning Vim for People Who Think Things Like Vim Are Weird and Hard](http://csswizardry.com/2014/06/vim-for-people-who-think-things-like-vim-are-weird-and-hard/)
* [VIM Regex](http://vimregex.com/)
* [Vim Tips Wiki](http://vim.wikia.com/)
* [Vim Tips Wiki's Best Vim Tips](http://vim.wikia.com/wiki/Best_Vim_Tips)
* [r/Vim Wiki](https://www.reddit.com/r/vim/wiki/index)
* [Zzapper's Best of Vim Tips](http://zzapper.co.uk/vimtips.html)
* [Secrets of the Vim Ninja](http://bencrowder.net/files/vim-fu/)
* [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
* [VI Cheat Sheet](http://www.lagmonster.org/docs/vi.html)
* [Learning Vi & Vim editors (O'Reilly)](http://www.amazon.com/gp/product/059652983X) (prefer books?)
* [Download Vim](http://www.vim.org/download.php)
* [Derek Wyatt's Vim Video Tutorials](http://derekwyatt.org/vim/tutorials/)
* [VIM Adventures](http://vim-adventures.com/) (Learn VIM playing an RPG)
* [vimgolf](http://vimgolf.com/) (find the shortest way to complete the challenges)
* [shortcutFoo](https://www.shortcutfoo.com/) (Drills to learn your tools better)
* [Stack Overflow Question: What is your most productive shortcut with Vim?](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118)
* [Stack Overflow Question: What are the most frequently used vimdiff commands?](http://stackoverflow.com/questions/5288875/vimdiff-what-are-the-most-frequently-used-commands-shortcuts-that-could-get-a-n)
* [Stack Overflow Question: What simple vim commands do you wish you'd known earlier?](http://stackoverflow.com/questions/1276403/simple-vim-commands-you-wish-youd-known-earlier)
* [Quora Questions: What are the most amazing things that can be done with Vim?](http://www.quora.com/What-are-the-most-amazing-things-that-can-be-done-with-Vim)
* [amix's .vimrc](http://amix.dk/vim/vimrc.html) (a huge default vimrc file with lots of goodies)
* [vimrc generator](http://vimrcgenerator.appspot.com/) (makes a simple/minimal vimrc with a nice GUI)
* [Vim Regex Tutor](https://github.com/dahu/VimRegexTutor)
* [Vim Regexes](http://andrewradev.com/2011/05/08/vim-regexes/)
* [7 habits of effective text editing](http://www.moolenaar.net/habits.html)
