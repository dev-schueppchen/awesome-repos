#!/bin/bash

# Adds a listed repo as submodule to the vendor path
# USAGE: add.sh githubUsername/repoName


CURRDIR=$(printf '%s\n' "${PWD##*/}")
VENDOR="./vendor"
CAT=$1
REPO=$2

_CATS="./categories.sh"

if [ "$CURRDIR" == "scripts" ]; then
    VENDOR="../vendor"
    _CATS="../categories.sh"
fi

source $_CATS 

if [ -z $REPO ] || [ -z $CAT ]; then
    echo "USAGE: add.sh category githubUsername/repoName"
    exit 1
fi

for c in "${CATS[@]}"; do
    [ "$CAT" == "$c" ] && _CAT_CONTAINS=1
done

if [ -z $_CAT_CONTAINS ]; then
    echo "Invalid category. Valid categories are:"
    echo "${CATS[@]}"
fi

case "$REPO" in
    *"github.com"*|*"https://"*|*"http://"*|*"www."*|*".git")
        echo "Please do not use links as repository."
        echo "Use username/repo instead."
        exit 1 ;;
esac

git submodule add https://github.com/${REPO}.git ${VENDOR}/${CAT}/${REPO}