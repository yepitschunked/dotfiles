fpath=(~/.zsh/completion $fpath)
setopt prompt_subst
autoload -U compinit
compinit
source ~/.zsh/completion/npm.plugin.zsh
source ~/.zsh/completion-settings.zsh
source ~/.zsh/termsupport.zsh

source ~/.zsh/vcs_info.zsh

export EDITOR=vim
export VISUAL=vim
export PAGER='less'
export LESS="-iMJXR"
export CLICOLOR=true

# Browser (Default)
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

source $HOME/.aliases

local rvm_ruby=' [$(rvm-prompt)]'
local git_prompt='${vcs_info_msg_0_}'
export PROMPT="%F{135}%n%f:%F{118}%~%f${git_prompt}%f${rvm_ruby}
$ "

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

## Command history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
