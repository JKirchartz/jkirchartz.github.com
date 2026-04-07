---
title: Making Windows More Linuxy
tags: article windows console terminal bash cygwin mintty mingw cmder babun chocolatey conEmu
---

Switching to windows from linux seems counter-intuitive, but to make the
transition lets painless you can install a few programs in a breeze and be
running a familiar system Window's `cmd.exe` is a strange parallel universe
vaguely remniscent of DOS and the days of yore it hasn't changed much since
then.  Fortunately we also have `powershell` which shipped by default starting
with Windows Vista, 7, and Server 2008; I'm sure it's great if you're a Windows
sysadmin,<!--more--> but for me it looks more like their ugly, yet powerful,
step-child that they hide in the cellar and feed baby-ruth bars, kind of like
PHP.  In Powershell some of the commands linux users are used to might work, but
generally because their aliased to their new equivalents, for example `cd` is
aliased to `Set-Location` and `dir` does `Get-ChildItem`. So there's two
pre-installed 'doze consoles, they're kind of alright, but nothing like what
[linux][1] does.

What windows is sorely lacking though is a package manager, and here
[Chocolatey NuGet][2] really takes the cake.  They've got over 2000 unique
packages, and more than 4 million downloads with their system; and installation
is a snap.  You'll need administrator privileges, so hit the windows key and
type `cmd` then hit <kbd>ctrl</kbd><kbd>shift</kbd><kbd>enter</kbd>. According
to [their website][2] to install, run:

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

## Plot Twist

I sat on this draft for so long[^HowLong] that everything has changed! Windows
has made itself more Linuxy! WSL2 beats the pants off Cygwin, or any of these
other solution! Windows Terminal is a lot nicer than anything I've found based
on ConEmu, especially now that Windows Terminal has matured a bit, and you
don't need to hand-edit JSON with regedit data to get it working properly; [You
can skip ahead](#Modern-WSL2) or continue with this following section
(preserved for historical purposes)


> now installing packages is as simple as
>
>     choco install cygwin conemu
>
> So that's just what we'll do - install [Cygwin][3] so we can get a decent linux-ish environment to develop in, and `cyg-get` so we can have our linux-ish packages managed, and [ConEmu][4] because we'll need an awesome terminal emulator to run it in
> Now that you've been triply "blessed by the chocolatey gods," you're ready to setup ConEmu, you can run it by typing the following into cmd
>
> 	"C:\Program Files\ConEmu\ConEmu64.exe"
>
> The first time running this there is a dialogue, here you can set ConEmu to be portable, automatically update, and a few other options.
> I prefer to keep my config as an xml file in the ConEmu directory, and automatic updates are a nice plus.
> After this modal ConEmu opens with `cmd.exe` running, you can click the arrow next to the green plus icon in the upper right to see some pre-defined shells, unfortunately the defaults expect Cygwin to be in it's default directory `C:\Cygwin` but chocolatey installs it in C:\tools\cygwin`.
> To fix this, open the ConEmu settings by Right click where the tabs are and select 'settings', or press <kbd>Win</kbd><kbd>alt</kbd><kbd>p</kbd>.
> Under 'Startup' on the right, select 'Tasks', click on the `{Cygwin Bash}` task, and change the directory cygwin is installed, iiand t should now read
>
> 	%SystemDrive%\tools\CygWin\bin\sh.exe --login -i
>
>
> if your current user isn't admin, you can append `-new_console:a` to that to tell conemu to startup as admin. Also you can use `mintty.exe` instead of `sh.exe` if you prefer, [mintty][5] is based on the front-end of [PuTTY][6]
>
> Now lets set it as our default terminal, on the left select 'Startup' then the radio button for "Specified named task", and select `{Cygwin Bash}`, click `Save Settings`
>
> Now's the time to make it dev-friendly, chocolatey provides a shortcut to cyg-get via `choco cygwin`, this will open the cygwin GUI package manager and install the apropriate files and their dependancies.
>
>     choco cygwin vim git ncurses
>
> To continue setting everything up, prepare a few symlinks
>
>     $>cd /
>     $>ln -s /cygdrive/c/Users/ /home
>     $>cd ~
>     $>ln -s ./Dropbox/projects /projects
>
> So far this cygwin installation is the best I've used... sorry [cmder][7] and [babun][8].
>
> For myself I'll spruce this up a bit more by pulling my dotfiles, \[edit: circa 2014\]
>
>     $>git clone --revision=be4bf6841a6e1b70ed722a947c62fd7ffe8835cf --depth=1 https://github.com/jkirchartz/dotfiles.git
>     $>dotfiles/make.sh
>

# Modern WSL2

Wow, didn't all that stuff look difficult? There might be a newer replacement
for [Chocolatey][9], but for now it's still what I use; so initial setup is in
an Admin Powershell session:

    $> choco install microsoft-windows-terminal docker-desktop -y

Windows[^WinVer], as one of it's charming quirks, requires a reboot here to
properly do it's magic; but after rebooting it's another Admin Powershell
session, this time to install a Linux distro. Now, there's plenty of distros to
choose from, Arch, Alpine, Debian, Kali, etc --I've tried most of them-- but
what plays well with Windows & Docker & everything else the best is good ol'
[Ubuntu][10]. So open Admin Powershell again and set this up with:

    $> wsl --set-default-version 2 # make sure you're running the latest and greatest WSL, since 2019
    $> wsl --install  # by default this installs Ubuntu, but you can use -d Ubuntu if you want to be extra sure

Running `wsl --status` in Powershell should now show some information like

    Default Distribution: Ubuntu
    Default Version: 2

Another restart is required, but now running `wsl` will start Ubuntu and ask to
setup your username & password for your new Linux VM; Once that's sorted, make
sure the instance is up-to-date;

    $> sudo apt update && sudo apt upgrade

and for me, I install my [new dotfiles][^10] into a hidden directory `.dotfiles`,

    $> git clone https://tildegit.org/kirch/dotfiles.git $HOME/.dotfiles
    $> $HOME/.dotfiles/dfm setup

but for you, you might only want the few niceties from my dotfiles --which are
less complicated than ever, since `wsl-setup` or `wslu` are no longer
necessary-- I'm "OS Agnostic" so my dotfiles are designed to work on Mac &
Linux, which means it now Just Works&trade; on Windows, too.

    alias open="explorer.exe"¬
    # pbcopy/paste are Mac-isms, here's the old way to give them access to Windows Clipboard:
    alias pbcopy="clip.exe"¬
    alias pbpaste="powershell.exe Get-Clipboard | sed 's/\r$//' | sed -z '$ s/\n$//'"¬
    # But now we can use X utilities instead:
    alias pbcopy="xclip"
    alias pbpaste="xclip -o"

WSL/WT already puts /mnt/c/system32 into your PATH, but some [old tricks][11]
still work. Other than that most things work as they should, `Ctrl+Shift+C` and
`Ctrl+Shift+V` work for pasting into Windows Terminal. Windows Terminal has an
auto-start and a Quake-like shortcut key (currently I have to open the quake
window and make it full-screen once per reboot with the `f11`, but maybe
Microsoft will fix that, or maybe I'll figure out a work-around.)

[1]: {% post_url Linux For Web-Devs On Windows %}
[2]: http://chocolatey.org/
[3]: http://cygwin.org/
[4]: https://code.google.com/p/conemu-maximus5/
[5]: https://code.google.com/p/mintty/
[6]: http://www.putty.org/
[7]: http://bliker.github.io/cmder/
[8]: http://babun.github.io
[9]: https://alternativeto.net/software/chocolatey/
[10]: https://documentation.ubuntu.com/wsl/stable/
[11]: https://web.archive.org/web/20231201064931/https://www.techtronic.us/pbcopy-pbpaste-for-wsl/

[^HowLong]: Since 2014! Wow, so much has changed in ~10 years!
[^WinVer]: "Windows 10 version 2004 (build 19041) or later, or Windows 11," but those older devices should've probably been already "upgraded to Linux" by now...
[^10]: Blog post TBA... but, tl;dr: I recently refactored my dotfiles, but I'm still using Bash and avoiding garish powerline-style UIs
