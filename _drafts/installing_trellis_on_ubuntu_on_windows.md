---
layout: post
title: Installing Trellis on Ubuntu on Windows
published: false
tags: article
---



## Enable Bash on Windows.
1. Turn On Developer Mode in Window's Update & Security settings
2. In Window's Control Panel > Programs turn on the windows feature "windows subsystem for linux"
3. Restart your Computer
4. Run `C:\WINDOWS\system32\bash.exe`
5. Follow the prompts to setup Ubuntu/Bash on Windows



Welcome to the Bash Shell, what every Windows Developer has been missing out on.
(Unless they provision VMs or use git bash, cygwin, or some other sub-optimal solution)

## Install required programs
1. Add Node 4.0 source following the instructions for [debian and ubuntu][1] with `curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -`
2. Add Ansible source following the instructions for [ubuntu][2] with `sudo apt-add-repository ppa:ansible/ansible`
3. Install the Oracle Public Key with `wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -`
3. Add VirtualBox PPA with `sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'`
3. Run `sudo apt-get update` have apt-get find all the files in the previous package sources
4. Use `wget` to download the Vagrant .deb file from [Vagrant's Download Page][6]
5. Install Vagrant with `dpkg -i vagrant_<whatever>.deb` (replacing "<whatever>" with the rest of the filename)
6. Install other required programs with `sudo apt-get install -y nodejs python-pip ansible virtualbox`
7. Install vagrant plugins with `vagrant install plugin vagrant-bindfs && vagrant install plugin vagrant-hostmanager`

These weren't pre-installed, because why should they be?

## Setup SSH
1. Generate an SSH-key with `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` (replacing "your_email@example.com" with your email)
2. Follow the prompts to choose where to save your key, and choose a secure passphrase (or not, I'm not here to boss you around, but [it'll be less secure][3])
3. Since you're using a passphrase on Ubuntu/Debian start an ssh-agent with `eval \`ssh-agent\`` (if you ever have to use your password more than once in a row, run this again)
4. Add your key with `ssh-add` & enter your passphrase for the last time (this session, see 3)


## Install Trellis
1. Clone your existing project, start a new project with the [Instructions in the Trellis Doc][4], or use my [rootsinit.sh script][5]
2. Run  `ansible-galaxy install -r requirements.yml`



[1]: https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
[2]: http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu
[3]: https://help.github.com/articles/working-with-ssh-key-passphrases/#why-do-i-need-a-passphrase
[4]: https://roots.io/trellis/docs/installing-trellis/
[5]: https://github.com/JKirchartz/dotfiles/blob/master/scripts/rootsinit.sh
[5]: https://www.vagrantup.com/downloads.html
