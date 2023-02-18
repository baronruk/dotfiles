function l(){
	cd $(eval "sed -n 's|start_directory: ||p' ~/dotfiles/.tmuxp/$1")
	tmuxp load ~/dotfiles/.tmuxp/$1
}

function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function virtualenv_info { 
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

