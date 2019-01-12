#!/bin/bash

tail -n 24 /var/log/netspeed |  awk -F ',' '{
					      date=substr($1,0,4)"/"substr($1,5,2)"/"substr($1,7,2)" "substr($1,9,2)":"substr($1,11,2) 
					      datecmd=s"date +\"%s\" -d \""date"\""
					      while ( ( datecmd | getline unixdate ) > 0 ) {
						print unixdate","$9
					      }
					    }'
