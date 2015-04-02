export PATH=/opt/twitter/bin:/opt/twitter/sbin:$PATH
# dottools: add distribution binary directories to PATH
if [ -r "$HOME/.tools-cache/setup-dottools-path.sh" ]; then
  source "$HOME/.tools-cache/setup-dottools-path.sh"
fi

## rvm
[[ -s "/opt/twitter/rvm/scripts/rvm" ]] && source "/opt/twitter/rvm/scripts/rvm"

## nvm
[[ -e "/opt/twitter/nvm/nvm.sh" ]] && source "/opt/twitter/nvm/nvm.sh"

