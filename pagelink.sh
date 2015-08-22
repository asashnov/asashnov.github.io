#!/bin/sh

if [ -z "$1" ]; then
    echo "ERROR: $0: Page ID is empty, exit." >&2
    exit 1
fi

file="$1.m4"

if [ ! -f "$file" ] ; then
    echo "ERROR: $0: File $file not found" >&2
    exit 1
fi

title=`cat $file | sed -n 's/_HEADER({{\([^},]*\)}}.*/\1/ p'`

echo -n "<a class=\"pagelink\" href=\"$1.html\">$title</a>"
