#!/bin/bash

[[ -f ${HOME}/.bashrc ]] && source ${HOME}/.bashrc

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -e  "${HOME}/bin/tmux-startup.sh" ]] && . ${HOME}/bin/tmux-startup.sh
  
