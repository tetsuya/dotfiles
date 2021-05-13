abbr -a c code
abbr -a d docker
abbr -a h heroku

abbr -a g git
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit
abbr -a gcm git commit -m
abbr -a gca git commit --amend
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gl git log
abbr -a gls git log --name-status --pretty=fuller
abbr -a gp git push
abbr -a gr git reset
abbr -a grh git reset --hard
abbr -a grs git reset --soft
abbr -a gri git rebase -i
abbr -a gra git rebase --abort
abbr -a grc git rebase --continue
abbr -a gs git status
abbr -a gst git stash
abbr -a gsl git stash list
abbr -a gsp git stash pop
abbr -a gss git stash show

alias be="bundle exec"
alias bi="bundle install"
alias ls="ls -GAF"
alias wifi="wifi-password"

# oh-my-fish/plugin-osx
alias pwf="pfd"
alias rm="trash"

set --global LANG en_US.UTF-8
set --global LC_ALL en_US.utf-8
set --global pure_symbol_prompt "\$"

# mysql-client
set --global fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths
set --global LDFLAGS "-L/usr/local/opt/mysql-client/lib"
set --global CPPFLAGS "-I/usr/local/opt/mysql-client/include"
