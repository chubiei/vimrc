Guide
=====

Linux installation
------------------

Backup .vim and .vimrc and execute the following commands:

    # clone vimrc
    cd ~
    git clone https://github.com/chubiei/vimrc
   
    # link .vim and .vimrc
    ln -sf vimrc ~/.vim
    ln -sf vimrc/vimrc ~/.vimrc
   
    # install
    cd ~/.vim
    ./install
    
Mac OSX installation
--------------------

Backup .vim and .vimrc and execute the following commands:

    # clone vimrc
    cd ~
    git clone https://github.com/chubiei/vimrc
   
    # link .vim and .vimrc
    ln -sf vimrc ~/.vim
    ln -sf vimrc/vimrc ~/.vimrc
   
    # install
    cd ~/.vim
    ./install.osx

Note that the install script will install [MacVim](https://github.com/macvim-dev/macvim/releases) and [CMake](https://cmake.org) to your system automatically without changing the environment variables. Only 2 links will be added to /usr/local/bin.


