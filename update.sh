#!/usr/bin/env bash

git add -A
git commit --amend --no-edit
rm -rf ~/.vim/bundle/AutoGit
vi +PluginInstall +qall
vi plugin/autogit.vim

