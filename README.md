vimEnv
======

Jason's .vimrc and vim plugins managed by pathogen located in .vim/

Installation
------
1. Make sure you have Vim 7.3.584 with python2 support. Ubuntu 14.04 and later have a Vim that's recent enough. You can see the version of Vim installed by running `vim --version`. Then exec the following scripts.

```Bash
cd ~
git clone https://github.com/toyCoder/vimEnv.git
git submodule update --init --recursive 
```

2. If you want to use YCM and it's semantic support for C-family languages, make sure that you have development tools, CMake and  Python headers installed. Otherwise, you can install them on Ubuntu by the following commands.

```Bash
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
```
3. Get the YCM sources.
```Bash
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive 
```

4. Compiling YCM.

```Bash
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```
  You can also add `--system-libclang` to the install script in case you already have libclang version 3.5 or higher installed.
  But [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe) STRONGLY recommended AGAINST use of the system libclang instead of the upstream compiled binaries. <br>
  
  See more details and the usage of YCM at [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe).

Attention
------

  If you want to use plugin vim-go, please be sure all the necessary binaries are installed (such as `gocode`, `godef`, 
`goimports`, etc..). You can easily install them with the included `GoInstallBinarie`. <br>

  If you failed to execute `:GoInstallBinarie` caused by the motherf**k wall, you'll need to get the gotools packages via [gopm.io](http://gopm.io/download).

  See more details at [fatih/vim-go](https://github.com/fatih/vim-go).
