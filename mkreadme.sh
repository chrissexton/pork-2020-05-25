#!/bin/bash

ls -bt | grep -v 'readme' | awk -F'\t' 'BEGIN {print "= img\n"} {print "* link:" $1 "[" $1 "]\n+\n[link=" $1 "]\nimage::" $1 "[width=500]" }'
