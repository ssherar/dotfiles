Dotfiles
========

My incredibly precious dotfiles which I transfer between computer and server alot. 

Installing
----------

This repository utilises submodules often, so manually you can install by typing

    $ git clone http://github.com/ssherar/dotfiles.git .dotfiles && cd .dotfiles
    $ git submodule init
    $ git submodule update

Otherwise you are able to use the `bootstrap.sh` file to run this, as well as run the symlink creation/dependency download

    $ git clone http://github.com/ssherar/dotfiles.git .dorfiles && cd dotfiles
    $ chmod a+x scripts/bootstrap.sh
    $ scripts/bootstrap.sh


