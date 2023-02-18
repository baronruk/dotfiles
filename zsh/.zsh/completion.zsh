autoload -U promptinit compinit
compinit -d '~/dotfiles/zsh/.zcompdump'
promptinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

compdef "_files -W ~/dotfiles/.tmuxp -/" l

#compdef nala

_nala_completion() {
  eval $(env _TYPER_COMPLETE_ARGS="${words[1,$CURRENT]}" _NALA_COMPLETE=complete_zsh nala)
}

compdef _nala_completion nala
