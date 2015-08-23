#!/bin/sh
#
# Return string for tag '<img ' with width=xx height=yy

if [ ! -f "$1" ] ; then
  echo "imgsize.sh: ERROR: File $1 not found." >&2
  exit 1
fi

identify -verbose $1 2>/dev/null \
    | awk '/  Geometry: / { split($2,a,"[+x]") ;\
             print "width=\"" a[1] "\" height=\"" a[2] "\"" ; \
             exit ; \
           }'
