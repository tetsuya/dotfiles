abbr -a c code
abbr -a d docker
abbr -a h heroku

abbr -a g git
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit
abbr -a gca git commit --amend
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gl git log
abbr -a gls git log --name-status --pretty=fuller
abbr -a gp git push
abbr -a gs git status
abbr -a gsh git stash

alias be="bundle exec"
alias bi="bundle install"
alias ls="ls -GAF"
alias pwf="pfd"
alias rm="rmtrash"
alias wifi="wifi-password"

set --global LANG en_US.UTF-8
set --global LC_ALL en_US.utf-8
set --global pure_symbol_prompt "\$"

# mysql-client
set --global fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths
set --global LDFLAGS "-L/usr/local/opt/mysql-client/lib"
set --global CPPFLAGS "-I/usr/local/opt/mysql-client/include"

# python
pyenv init - | source
