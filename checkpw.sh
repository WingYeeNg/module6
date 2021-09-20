#!/bin/bash

 awk 'BEGIN { 
      NR>1; if ( $0 !~ /[[:alnum:]]{8}[[:upper:]]+/ )
               printf $2 " - does NOT meet passowrd strength requirements"
            else
               printf $2 " - meets passowrd strength requirements"
          }' usrpwords.txt
exit 0