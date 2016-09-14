#!/bin/sh
echo $1
if test -z "$1";then
    echo "please input comments"
fi
svn st | grep '^\!' | awk '{print $2}' | xargs svn delete
svn st | grep '^\D' | awk '{print $2}' | xargs svn ci -m "$1"
