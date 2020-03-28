#!/bin/bash

if [[ -e /tmp/dirstack ]]; then
	cd $(head -n 1 /tmp/dirstack)
fi
