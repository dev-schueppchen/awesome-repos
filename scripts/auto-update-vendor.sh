#!/bin/bash

REPOURL="git@github.com:dev-schueppchen/awesome-repos.git"
REPODIR="./.aweome-repos"

git clone $REPOURL $REPODIR
git -C $REPODIR submodule update --recursive
git -C $REPODIR add .
git -C $REPODIR -c user.name="auto-vendor-update" -c user.email="auto-vendor-update" commit -m "automatically updated submodules"
git -C $REPODIR push
rm -r -f $REPODIR