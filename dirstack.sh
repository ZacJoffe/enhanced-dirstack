#!/bin/bash

push () {
	if [[ ! -e /tmp/dirstack ]]; then
		echo -e "$PWD\n" > /tmp/dirstack	
	else
		if ! grep -Fxq "$PWD" /tmp/dirstack; then
			echo -e "$PWD\n$(cat /tmp/dirstack)" > /tmp/dirstack
		fi
	fi
}

pop () {
	if [[ -e /tmp/dirstack ]]; then
		cd $(head -n 1 /tmp/dirstack)
	fi
}
