export BASH_SILENCE_DEPRECATION_WARNING=1
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"

#
# Let's just get this out of the way
#
export PATH="/Users/randall/.krew/bin:/Users/randall/bin:/Users/randall/go-workspace/bin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/MacGPG2/bin:/usr/local/opt/gnu-getopt/bin:/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/opt/go/libexec"

export PROMPT_COMMAND="history -a; echo -ne \"\033]0;$(id -un)@trashcan - $(pwd)\007\""
export PS1='\[\033[01;34m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;30m\]$(__git_ps1 " (%s)" 2>/dev/null)\[\033[01;31m\]$([[ $(id -u) == 0 ]] && echo -n "#" || echo "$")\[\033[00m\] '

export GOPATH="${HOME}/go-workspace"
export GOBIN="${GOPATH}/bin"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="/usr/local/opt/helm@2/bin:$PATH"

#
# All sorts of color!
#
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export GROFF_NO_SGR=1

#
# Are you kidding?
#
export EDITOR="vim"

# 
# Not that useful
#
alias keygrip='gpg -K --with-keygrip'

#
# Kubectl completion plz
#
type -f kubectl >/dev/null 2>&1 && source <(kubectl completion bash)

#
# This is cool stuff right here
#
test -e "${HOME}/.promptline.sh" && source "${HOME}/.promptline.sh"

#
# Does this do anything?
#
export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

shopt -s histappend

prod_kubeconfig () { export KUBECONFIG="${HOME}/.kube/config-prod"; echo "KUBECONFIG set to prod"; }
nonprod_kubeconfig () { export KUBECONFIG=""; echo "KUBECONFIG set to nonprod"; }
tagdir() { (IFS=$'\r\n'; if [ -d "$1" ]; then cd $1; music-tagger.sh; else echo "no dir $1"; fi ); }

. ${HOME}/.kubectl-aliases

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -x "/usr/local/MacGPG2/bin/gpg-connect-agent" ] && gpg-connect-agent updatestartuptty /bye > /dev/null
alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}"
alias g++='/usr/local/bin/g++-11'
