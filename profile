export CLICOLOR="true"
export GIT_PS1_SHOWDIRTYSTATE="true"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

eval "$(rbenv init -)"

[[ -e /usr/local/etc/bash_completion.d/git-completion.bash ]] && source /usr/local/etc/bash_completion.d/git-completion.bash

function git_branch {
  echo $(__git_ps1) | sed "s/(\(.*\))/ [\1]/"
}

export PS1="\w\[\e[1;32m\]\$(git_branch)\[\e[0m\] : "

alias a="amazebot"
alias b="bundle"
alias be="bundle exec"
alias c="cat"
alias g="git"
alias ge="gem"
alias h="heroku"
alias i="irb"
alias n="nano"
alias r="rails"
alias ra="rake"
alias rb="rbenv"
alias rsp="rspec"
alias ru="ruby"
alias t="touch"
