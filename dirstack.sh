#!/bin/bash

DIR_STACK="/tmp/dirstack"

push () {
	if [[ ! -e $DIR_STACK ]]; then
		echo -e "$PWD\n" > $DIR_STACK
	else
		if ! grep -Fxq "$PWD" $DIR_STACK; then
			echo -e "$PWD\n$(cat $DIR_STACK)" > $DIR_STACK	
		fi
	fi
}

pop () {
	if [[ -e $DIR_STACK ]]; then
		cd $(head -n 1 $DIR_STACK)
	fi
}
