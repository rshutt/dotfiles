
# Deal with compfix issues
export ZSH_DISABLE_COMPFIX=true

# Use tmux for fzf popups
export FZF_TMUX=1

# Fixing zsh-vi-mode keybinding overwrite issue

ZVM_INIT_MODE=sourcing
ZVM_VI_EDITOR=nvim

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

#ZSH_TMUX_AUTOSTART="false"
if [[ -z "${TMUX}" && -z "${SUDO_USER}" ]]; then
  ZSH_TMUX_AUTOSTART="true"
  ZSH_TMUX_AUTOSTART_ONCE="true"
  ZSH_TMUX_DEFAULT_SESSION_NAME="dev"
else
  ZSH_TMUX_AUTOSTART="false"
  ZSH_TMUX_AUTOSTART_ONCE="false"
fi

  
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-vi-mode
  bundler
  dotenv
  macos
  jsontools
  node
  pip
  web-search
  colored-man-pages
  colorize
  common-aliases
  copyfile
  brew
  kubectl
  fasd
  tmux
  gh
  gpg-agent
  helm
  kubectx
  pep8
  pylint
  pip
  pre-commit
  pylint
  golang
  ssh
  virtualenv
  ansible
  web-search
  fzf
  aws
  )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# kubectl

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias vim="nvim"
alias vi="nvim"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
PATH=$(
  cat <<EOF
/opt/homebrew/bin:/opt/homebrew/opt/grep/libexec/gnubin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:/Users/randall/.krew/bin:/Users/randall/bin:/Users/randall/go-workspace/bin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/MacGPG2/bin:/opt/homebrew/opt/gnu-getopt/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/opt/homebrew/opt/go/libexec
EOF
)

export PATH

#source ${HOME}/.kubectl-aliases
#export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"

export GOPATH="${HOME}/go-workspace"
export GOBIN="${GOPATH}/bin"
export GOROOT="/opt/homebrew/opt/go/libexec"
export PATH="/opt/homebrew/opt/helm@2/bin:$PATH"
#
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
# Not that useful
#
alias keygrip='gpg -K --with-keygrip'

#
# Adding sensuctl
#
type -f sensuctl >/dev/null 2>&1 && source <(sensuctl completion zsh)

#
# Adding Stern
#
type -f stern >/dev/null 2>&1 && source <(stern --completion zsh)

#
# Adding vault-kv-search
#
type -f vault-kv-search >/dev/null 2>&1 && source <(vault-kv-search completion zsh)

#
# Adding astro-cli
#
type -f astro >/dev/null 2>&1 && source <(astro completion zsh)


#
# Lets get our old promptline loaded
#
[ -f "${HOME}/.promptline.zsh" ] && source "${HOME}/.promptline.zsh"

#
# Hey, fix cmdline editing
#
function edit-command-line-inplace() {
  if [[ $CONTEXT != start ]]; then
    if (( ! ${+widgets[edit-command-line]} )); then
      autoload -Uz edit-command-line
      zle -N edit-command-line
    fi
    zle edit-command-line
    return
  fi
  () {
    emulate -L zsh -o nomultibyte
    local editor=("${(@Q)${(z)${VISUAL:-${EDITOR:-vi}}}}")
    case $editor in
      (*vim*)
        "${(@)editor}" -c "normal! $(($#LBUFFER + 1))go" -- $1
      ;;
      (*emacs*)
        local lines=("${(@f)LBUFFER}")
        "${(@)editor}" +${#lines}:$((${#lines[-1]} + 1)) $1
      ;;
      (*)
        "${(@)editor}" $1
      ;;
    esac
    BUFFER=$(<$1)
    CURSOR=$#BUFFER
  } =(<<<"$BUFFER") </dev/tty
}

bindkey -M vicmd ^F edit-command-line

#alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-user --no-permissions"
#
eval "$(zoxide init zsh)"

#alias cd="z"
#

HISTFILE="${HOME}/.zhistory"
SAVEHIST="10000"
HISTSIZE="9999"
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source ~/.venv/bin/activate
source ~/.oh-my-zsh/custom/plugins/fzf-git.sh/fzf-git.sh

alias journalctl_date="date +\"%Y-%m-%d %H:%M:%S\""
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
