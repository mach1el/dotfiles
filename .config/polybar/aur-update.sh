#!/bin/bash

if [[ `cower -u | wc -l` > "0" ]]; then
    termite -e "packer -Syu"
fi

exit 0