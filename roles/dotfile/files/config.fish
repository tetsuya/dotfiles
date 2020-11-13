alias be="bundle exec"
alias bi="bundle install"
alias c="code"
alias do="docker"
alias g="git"
alias h="heroku"
alias ku="kubectl"
alias ls="ls -GAF"
alias pwf="pfd"
alias rm="rmtrash"
alias wifi="wifi-password"

set --global LANG en_US.UTF-8
set --global LC_ALL en_US.utf-8

# mysql-client
set --global fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths
set --global LDFLAGS "-L/usr/local/opt/mysql-client/lib"
set --global CPPFLAGS "-I/usr/local/opt/mysql-client/include"

# python
pyenv init - | source
