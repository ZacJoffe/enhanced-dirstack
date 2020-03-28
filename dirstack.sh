#!/bin/bash

DIR_STACK="/tmp/dirstack"

push () {
	if [[ ! -e $DIR_STACK ]]; then
		echo -e "$PWD" > $DIR_STACK
	else
		# only push if the directory is different
		if ! grep -Fxq "$PWD" $DIR_STACK; then
			echo -e "$PWD\n$(cat $DIR_STACK)" > $DIR_STACK	
		fi
	fi
}

pop () {
	if [[ -e $DIR_STACK ]]; then
		if [[ "$1" == "list" ]]; then
			dir=$(cat $DIR_STACK | fzf)
		else
			dir=$(head -n 1 $DIR_STACK)
		fi

		# only pop if the directory is different
		if [[ $PWD != $dir ]]; then
			cd $dir
		fi
	fi
}

