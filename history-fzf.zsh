function history-fzf() {

  BUFFER=$(history -n 1 | fzf --tac --height 20% --query "$LBUFFER")
  CURSOR=$#BUFFER

  zle reset-prompt
}

zle -N history-fzf
bindkey '^r' history-fzf
