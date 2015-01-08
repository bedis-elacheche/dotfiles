function includeFolder(){
	dir=$1
	if [ -d $HOME/.$dir -a -r $HOME/.$dir -a -x $HOME/.$dir ]; then
		for i in $HOME/.$dir/*; do
			source $i
		done
	fi
}

includeFolder dotfiles


