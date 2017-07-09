#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# reset fpath so we don't load a whole bunch of useless functions
fpath=(
  /usr/local/share/zsh/site-functions
  /usr/share/zsh/functions/Chpwd
  /usr/share/zsh/functions/Completion
  /usr/share/zsh/functions/Completion/Base
  /usr/share/zsh/functions/Completion/Debian
  /usr/share/zsh/functions/Completion/Linux
  /usr/share/zsh/functions/Completion/Unix
  /usr/share/zsh/functions/Completion/Zsh
  /usr/share/zsh/functions/Exceptions
  /usr/share/zsh/functions/MIME
  /usr/share/zsh/functions/Misc
  /usr/share/zsh/functions/Newuser
  /usr/share/zsh/functions/Prompts
  /usr/share/zsh/functions/Zle
)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

cdpath=(
  /home/sundeep
  $cdpath
)

path=(
  ./node_modules/.bin
  $path
)

prompt skwp
