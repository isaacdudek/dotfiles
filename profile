export CLICOLOR="true"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

eval "$(rbenv init -)"

function git_branch {
  git branch --no-color 2> /dev/null | sed "s/\* \([a-zA-Z0-9_-]*\)/ [\1]/"
}

export PS1="\w\033[1m\033[32m\$(git_branch)\033[0m : "

alias b="bundle"
alias be="bundle exec"
alias g="git"
alias h="heroku"
alias i="irb"
alias r="rails"
alias ra="rake"
alias rb="rbenv"
alias rsp="rspec"
alias ru="ruby"
