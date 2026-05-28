eval "$(/opt/homebrew/bin/brew shellenv)"

abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit
abbr -a gca git commit --amend
abbr -a gcm git commit -m
abbr -a gco git checkout
abbr -a gcp git cherry-pick
abbr -a gd git diff
abbr -a gl git log
abbr -a gls git log --name-status --pretty=fuller
abbr -a gp git push
abbr -a gr git reset
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a grh git reset --hard
abbr -a gri git rebase -i
abbr -a grs git reset --soft
abbr -a gs git status
abbr -a gsh git stash
abbr -a gsl git stash list
abbr -a gsp git stash pop
abbr -a gss git stash show

alias cat="bat"
alias ls="ls -GAF"
alias wifi="wifi-password"

# oh-my-fish/plugin-osx
alias pwf="pfd"
alias rm="trash"

set --global --export LANG en_US.UTF-8
set --global --export LC_ALL en_US.utf-8
set --global --export EDITOR kiro

set --global pure_symbol_prompt "\$"
