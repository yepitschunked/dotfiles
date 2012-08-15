autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '%F{28}●'
zstyle ':vcs_info:*' unstagedstr '%F{11}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats "${branchformat}%F{blue}(%F{169}%a%F{blue})"
zstyle ':vcs_info:*' enable git svn
precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        branchformat=' %F{blue}(%b%c%u%F{blue})%f'
      } else {
        branchformat=" %F{blue}(%b%c%u%F{red}●%F{blue})%f"
      }

    zstyle ':vcs_info:*' formats "${branchformat}"
    vcs_info
}
