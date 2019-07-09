# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Allow i-search
stty -ixon

# Git branch in prompt
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Shell colors and prefix
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1="[\[\033[36m\]kris\[\033[m\]@\[\033[32m\]openfire:\[\033[33;1m\]\W\[\033[m\]]\$(parse_git_branch)\$ "

# Command aliases
alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gs='git status'
alias gp='git pull'
alias hs='hugo serve -D'

dockerstopall() {
   docker stop $(docker ps -a -q)
}
dockerrmall() {
   docker rm $(docker ps -a -q)
}
dockerrmiall() {
   docker rmi -f $(docker images -q)
}

# Text editor settings
alias nano='nano -w'

# AWS Credentials as ENV VARs
function read_aws_credentials_key {
  FILE=~/.aws/credentials
  if [ -f $FILE ]; then
    section=$1
    key=$2
    awk -F ' *= *' '{ if ($1 ~ /^\[/) section=$1; else if ($1 !~ /^$/) print $1 section "=" $2 }' $FILE | grep "$2\[$1\]" | sed 's/.*=//'
  fi
}

export AWS_ACCESS_KEY_ID=$(read_aws_credentials_key default aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(read_aws_credentials_key default aws_secret_access_key)
export AWS_DEFAULT_REGION=$(read_aws_credentials_key default region)
