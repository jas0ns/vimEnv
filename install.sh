#!/bin/sh -e                                                                                                                                   
rm -rf .vim .gitignore .vimrc .gitmodules README.md .git install.sh

mv -f .vim ~
mv -f .gitignore ~
mv -f .vimrc ~
mv -f .gitmodules ~
mv -f README.md ~
mv -f .git ~
mv -f install.sh ~
rm -rf ~/vimEnv

git submodule update --init --recursive 
