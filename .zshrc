zmodload zsh/zprof
setopt incappendhistory
alias vim="mvim -v"
export RAILS_ENV='development'

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/victor_lin/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export HISTCONTROL=erasedups
export HISTSIZE=100000
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home
export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_HOME=$JAVA8_HOME
export PATH=$JAVA_HOME/bin/:$PATH
export EDITOR=vim
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_flat

eval "$(rbenv init -)"
source ~/.airlab/shellhelper.sh
export NSS_DEFAULT_DB_TYPE=sql
[ -f `which fortune` ] && [ -f `which cowsay` ] && fortune | cowsay
declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm () {
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

for cmd in "${NODE_GLOBALS[@]}"; do
    eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done
# afdev
export DATA_DIR=$HOME/airlab-beta/repos/data
export AFDEV_HOST="i-0e0cbf43ab424efe4.inst.aws.airbnb.com"
export AFDEV_PORT=61000 #CHOOSE A DIFFERENT PORT
# optional
export AFDEV_USER="victor_lin"
zprof
