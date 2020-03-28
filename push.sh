#!/bin/bash

touch /tmp/dirstack
echo -e "$PWD\n$(cat /tmp/dirstack)" > /tmp/distack
