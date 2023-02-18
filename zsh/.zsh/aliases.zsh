# batcat
alias cat='bat'

# exa
alias ls='exa --header --git'

# cpufetch
alias cpufetch='cpufetch --logo-short'

# get keys
alias findpriv="ag bitbucket | grep indev | sed 's|.*\(indev/[^/.]*\).*|- \1|' | sort | uniq"

# open dotfiles directory
alias manage_dotfiles="subl $HOME/dotfiles/"
