# Set up the prompt
autoload -Uz promptinit
promptinit

# Use modern completion system
autoload -Uz compinit
compinit -d '~/dotfiles/zsh/.zcompdump'

autoload -Uz colors && colors

# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "[%B%{$fg[yellow]%}%b%{$reset_color%}]"
precmd () { vcs_info }

PROMPT='%B%{$fg[cyan]%}$(virtualenv_info)%{$reset_color%}% [%B%{$fg[green]%}%n%{$reset_color%}%B:%B%{$fg[magenta]%}%2/%{$reset_color%}]%{$fg[blue]%} %B=> %{$reset_color%}'
RPROMPT=\$vcs_info_msg_0_

