# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Git branch in prompt
parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Shell colors and prefix
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]openfire:\[\033[33;1m\]\W\[\033[m\]]\$(parse_git_branch)\$ "

# SSH aliases
alias sshkov='ssh koverholt@koverholt.com'

# Command aliases
alias top='top -u'
alias u='svn up'
alias sd='svn diff --diff-cmd colordiff'
alias st='svn status'
alias svndel="svn status --no-ignore | grep '^[I?]' | cut -c 9-"
alias svndely='svn status --no-ignore | grep "^[I?]" | cut -c 9- | while IFS= read -r f; do rm -rf "$f"; done'
alias wn="svn status | grep -v '?'"

alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gs='git status'

alias workon='source activate'
alias workoff='source deactivate'

# Text editor settings
alias nano='nano -w'
alias slime='subl -w'
export EDITOR='subl -w'

# Anaconda Python
export PATH="/Users/koverholt/anaconda/bin:$PATH"
