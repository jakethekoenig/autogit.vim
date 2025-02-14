#!/bin/bash

# Since this is a Vim plugin, we'll just do basic file checks
for file in $(git ls-files "*.vim"); do
    if ! vim -esN -u NONE -U NONE -i NONE --cmd "try | source $file | catch | cquit | endtry | quit"; then
        echo "Vim syntax error in $file"
        exit 1
    fi
done
