#!/usr/bin/env sh
#######################################################################
# Get the versions for an npm package
# First argument is the npm package name (e.g. webpack)
#######################################################################

if [ -z "$1" ]
then
    echo "You must specify a the npm package name (e.g. webpack)"
    exit 1
fi

npm view $1 versions --json 2>/dev/null | jq -r 'values[]'