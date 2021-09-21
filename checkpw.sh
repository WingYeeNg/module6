#!/bin/bash

 awk 'NR>1; { if ( $2 ~ /[a-zA-Z0-9]{8,}[A-Z]+[0-9]+/ )
             {   printf $2 " -  meet password strength requirements\n"; }
            else
             {  printf $2 " - does NOT meets password strength requirements\n"; }
            }' usrpwords.txt
exit 0