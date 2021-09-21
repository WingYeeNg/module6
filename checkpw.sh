#!/bin/bash

awk 'NR>1 { if ($2 ~/[[:upper:]]+/ && /[[:digit:]]+/ && $2 ~/^[.]{8,}$/ )
               { print $2 " - meets password strength requirements"; }
            else
               { print $2 " - does NOT meet password strength requirements"; }
        }' usrpwords.txt
exit 0