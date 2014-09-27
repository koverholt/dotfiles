# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Change tab names in Terminal
function tabname {
  printf "\e]1;$1\a"
}
hostname=`hostname -s`
tabname "koverholt@$hostname"

# Shell colors and prefix
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1="[\u@openfire \W]$ "

# SSH aliases
alias b='ssh kjo@blaze.nist.gov'
alias n='cd ~/Repos/NIST-FIRE'
alias sshkov='ssh koverholt@koverholt.com'
alias firebot='ssh firebot@blaze.nist.gov'
alias mp4box='/Applications/Osmo4.app/Contents/MacOS/MP4Box'

# Command aliases
alias top='top -u'
alias u='svn up'
alias sd='svn diff --diff-cmd colordiff'
alias st='svn status'
alias svndel="svn status --no-ignore | grep '^[I?]' | cut -c 9-"
alias svndely='svn status --no-ignore | grep "^[I?]" | cut -c 9- | while IFS= read -r f; do rm -rf "$f"; done'
alias wn="svn status | grep -v '?'"

# FDS aliases
FDS_SVN_ROOT=~/FDS-SMV
CFAST_SVN_ROOT=~/cfast
alias f='cd $FDS_SVN_ROOT'
alias fds='/Applications/FDS/FDS6/bin/fds'
alias smv='/Applications/FDS/FDS6/bin/smokeview'
alias cfast='$CFAST_SVN_ROOT/CFAST/intel_osx_64/cfast6_osx_64'

# Text editor settings
alias nano='nano -w'
alias slime='subl -w'
export EDITOR='slime'

# Path to Intel Fortran compiler
export IFORT_COMPILER=/opt/intel/composerxe

# Anaconda Python
export PATH="/Users/koverholt/anaconda/bin:$PATH"

#FDS 
source ~/.bashrc_fds intel64
