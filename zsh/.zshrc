# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e


# Keep 10000(max) lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/dotfiles/zsh/.zsh_history


zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format '%F{magenta}-- Completing %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputim#e,cmd'


# source
source ~/dotfiles/zsh/.zsh/colors.zsh
source ~/dotfiles/zsh/.zsh/completion.zsh
source ~/dotfiles/zsh/.zsh/exports.zsh
source ~/dotfiles/zsh/.zsh/functions.zsh
source ~/dotfiles/zsh/.zsh/pew.zsh
source ~/dotfiles/zsh/.zsh/prompt.zsh
source ~/dotfiles/zsh/.zsh/zshoptions.zsh
source ~/dotfiles/zsh/.zsh/aliases.zsh


# plugins
# NOTE: If you want to use zsh-syntax-highlighting along with zsh-history-substring-search,
# then make sure that you load zsh-syntax-highlighting first
source ~/dotfiles/zsh/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh


# zsh-history-substring-search key bindings
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down


# starship prompt
eval "$(starship init zsh)"


# colorscript
# colorscript -e ghosts

