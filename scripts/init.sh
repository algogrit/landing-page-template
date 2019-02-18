#!/usr/bin/env bash

template=`git remote get-url origin`
git remote add template $template

title=`cat TITLE`

gsed -i s/template/"$title"/g pages/_app.js

# cname=`cat CNAME`
## TODO: Configuring netlify site name and redirection

# TODO: Figure out the git URL prompt
# git remote add origin git@gitlab.com:novel-digital-services/landing-page.git
