export EDITOR='nano'
export TERMINAL="alacritty"
export DISABLE_AUTO_TITLE='true'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# sublime
export PATH=/opt/sublime_text_3:$PATH

# batcat
export BAT_CONFIG_PATH=~/.bat/bat.conf

# blackbox
# export PATH=$PATH:/opt/blackbox/bin

# pipx
export PATH="$PATH:/home/romanos/.local/bin"

# blackbox
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

