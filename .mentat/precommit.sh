#!/bin/bash

# Check only plugin files, not documentation
for file in $(git ls-files "plugin/*.vim"); do
    if ! vim -esN -u NONE -U NONE -i NONE --cmd "try | source $file | catch | cquit | endtry | quit"; then
        echo "Vim syntax error in $file"
        exit 1
    fi
done
