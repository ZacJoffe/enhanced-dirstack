#!/bin/bash

if [[ ! -e /tmp/dirstack ]]; then
	echo -e "$PWD\n" > /tmp/dirstack	
else
	echo -e "$PWD\n$(cat /tmp/dirstack)" > /tmp/dirstack
fi
