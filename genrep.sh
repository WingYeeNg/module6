#!/bin/bash

pre="<tr><td>"
post="<\/td><\/tr>"
mid="<\/td><td>"

cat attacks.html | grep "<td>" | sed -e "s/^$pre//g; s/$post$//g; s/$mid/ /g" |  awk '{ sum=($2+$3+$4);  print $1 "\t", sum}'

exit 0