# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#SVN shortcuts
export EDITOR=vim

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
source .fast_dev

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
    screen*)
    PROMPT_COMMAND='echo -n -e "\033k'"$@"'\033\\"'
        ;;
*)
    ;;
esac
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.alias ]; then
    . ~/.alias
fi

alias gotogemdir='cd /Users/victor/.rvm/gems/ree-1.8.7-2010.02/gems/'

if [[ `uname` =~ Linux ]]; then 
	alias ls='ls --color=auto'
else
	alias ls='ls -G'
fi
    
svn() {
  case "$1" in
          st|stat|up)
          svnargs1=""
          svnargs2="--ignore-externals"
          for i in $@; do
                  if [ "--examine-externals" == "$i" ]; then
                          svnargs2=""
                  else
                          svnargs1="$svnargs1 $i"
                  fi
          done
          echo command svn $svnargs1 $svnargs2
          command svn $svnargs1 $svnargs2
          ;;
          *)
          command svn "$@"
          ;;
  esac
}

