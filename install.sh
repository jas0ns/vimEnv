#!/bin/sh -e                                                                                                                                   
cd ~
rm -rf .vim .gitignore .vimrc .gitmodules README.md .git install.sh

cd vimEnv
mv -f .vim ~
mv -f .gitignore ~
mv -f .vimrc ~
mv -f .gitmodules ~
mv -f README.md ~
mv -f .git ~
mv -f install.sh ~

cd ~
rm -rf ~/vimEnv
git submodule update --init --recursive 
