#!/bin/sh
#
# Produce link to file with size in Kb
# $1 - filename

if [ ! -f "$1" ] ; then
  echo "filesize.sh: ERROR: File $1 not found." >&2
  exit 1
fi

R=`ls -s -k "$1" | awk '{ print $1 }'`

echo -n $R
