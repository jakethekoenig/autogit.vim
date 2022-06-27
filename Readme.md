# AutoGit

This is an ill advised plugin written for those that like to fly by the seat of their pants. The plugin automatically calls `git pull` when files containing `+ GITAUTOPULL` are read and automatically runs git add, git commit, git push when files containing `+ GITAUTOPUSH` are written. The idea is to make it easy to keep files like notes or dotfiles version controlled and in sync across computers. Obviously don't use this plugin in git projects you're collaborating on.

## Usage

If a file has `+ GITAUTOPULL` (without the space) written anywhere in it than vim will run `git pull` from the project directory of that file and then refresh the file if it changed. If a file has `+ GITAUTOPUSH` (without the space) written anywhere in it than vim will run `git add @%`, `git commit -m "Autogit commit"`, `git push` when the file is written.

You may need to ensure git has upstream set and your credentials cached to use this plugin.

## Installation

Can be installed however you install your vim plugins. For instance if you use Vundle add the following line to your vimrc:
```
Plugin jakethekoenig/autogit.vim
```
