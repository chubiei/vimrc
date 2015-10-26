Guide
=====

Linux installation
------------------

Backup .vim and .vimrc and execute the following commands:
```bash
# clone vimrc
cd ~
git clone https://github.com/chubiei/vimrc
   
# link .vim and .vimrc
ln -sf vimrc ~/.vim
ln -sf vimrc/vimrc ~/.vimrc
   
# install
cd ~/.vim
./install
```

Mac OSX installation
--------------------

Backup .vim and .vimrc and execute the following commands:
```bash
# clone vimrc
cd ~
git clone https://github.com/chubiei/vimrc
   
# link .vim and .vimrc
ln -sf vimrc ~/.vim
ln -sf vimrc/vimrc ~/.vimrc
   
# install
cd ~/.vim
./install.osx
```

Note that the install script will install [MacVim](https://github.com/macvim-dev/macvim/releases) and [CMake](https://cmake.org) to your system automatically without changing the environment variables. Only 2 links will be added to /usr/local/bin.

Windows installation
--------------------

- Backup vimfiles and _vimrc if you already have them.
- Install [Git](https://git-for-windows.github.io/), [CMake](https://cmake.org), [Python 2.7](https://www.python.org/), and [LLVM](http://llvm.org/releases/download.html) to your system. Do _NOT_ change the PATH environment variable.
- Follow the below instructions:
```batch
# clone vimrc
cd %HOMEPATH%
%GIT% clone https://github.com/chubiei/vimrc vimfiles
   
# install
# NOTE: default path may not work for you
cd %HOMEPATH%\vimfiles
install.cmd
```

Before executing `install.cmd`, you have to make sure the path of the 3rd-party libraries are correct. Change the predefined paths if necessary.
