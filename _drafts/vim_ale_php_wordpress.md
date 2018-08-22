---
title: Setting up Vim for Wordpress with ALE & PHP CodeSniffer
tag: article, php, vim, wordpress, development
---

Install PHP_CodeSniffer with Composer (or [another method][1])

    composer global require "squizlabs/php_codesniffer=*"

Add composer's path to your PATH variable (in your zshrc, or bashrc)

    export PATH=$PATH:$HOME/.composer/vendor/bin


reload your zsh/bash RC

    source ~/.zshrc


Install wordpress coding standards in your home directory

    git clone https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards.git ~/wpcs


and configure PHP_CodeSniffer to know about the WP standards

    phpcs --config-set installed_paths ~/wpcs


You can check if your configuration was successful by running `phpcs -i` and looking for 'Wordpress' in the output

Now that the configuration and linter are setup, it's time to tell vim & ALE what to do with them. Add the following lines to your vimrc (somewhere after you've loaded your plugins)

    let b:ale_linters={ 'php': ['phpcs'] }
    let g:ale_php_phpcs_standard = 'Wordpress'
    let g:ale_php_phpcs_use_global = 1



[1]: https://github.com/squizlabs/PHP_CodeSniffer
