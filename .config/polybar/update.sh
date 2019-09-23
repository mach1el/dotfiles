#!/bin/bash

if [[ `checkupdates | wc -l` > "0" ]]; then
    termite -e "sudo pacman -Syu"
fi

exit 0