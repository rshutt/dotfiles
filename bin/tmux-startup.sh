#!/usr/bin/env bash

if [ -z "${TMUX}" ]; then
  tmux list-sessions | egrep "^dev:" > /dev/null || {
    exec tmux new -s dev
    exit
  }

  tmux list-sessions | egrep "^dev:.*(attached)" > /dev/null || {
    exec tmux attach -t dev
    exit
  }
  
  [[ ! -f "${HOME}/.notmux" ]] && {
    exec tmux new -s ephemeral-$$
    exit
  }
fi
