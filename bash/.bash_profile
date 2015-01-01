# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Shell colors and prefix
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1="[\u@openfire \W]$ "

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

# Text editor settings
alias nano='nano -w'
alias slime='subl -w'
export EDITOR='subl -w'

MKL_NUM_THREADS=1
export MKL_NUM_THREADS

# Path to Intel Fortran compiler
export IFORT_COMPILER=/opt/intel/composerxe

# Anaconda Python
export PATH="/Users/koverholt/anaconda/bin:$PATH"
