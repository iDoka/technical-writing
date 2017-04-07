#!/bin/bash
echo ".Revision History" > $1
echo "[cols=\"^2s,^8,^26\",options=\"header\"]" >> $1
echo "|===================================================" >> $1
echo "| Date | Author | Comments" >> $1
git log --max-count=10 --date=short --pretty=format:"| %ad | %an | %s" doc/src/*.adoc >> $1
echo "|===================================================" >> $1
