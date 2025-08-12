#!/bin/bash
echo "$# Arguments Passed To This Script."
if [ $# -gt 0 ]; then
    for ITEM in $@; do
        command -v $ITEM >>/dev/null
        if [ $? -eq 0 ]; then
            echo "$ITEM Is Already Installed"
        else
            echo "$ITEM is not installed"
        fi
    done
else
    echo "No Arguments Passed To This Script. Please provide at least one argument."
fi
