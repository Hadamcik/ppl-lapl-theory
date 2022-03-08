#!/bin/bash

ROOT=assets
HTTP="/"
OUTPUT="assets/index.html" 

i=0
echo "<UL>" > $OUTPUT
for filepath in `find "$ROOT" -maxdepth 1 -mindepth 1 -type f| sort`; do
  file=`basename "$filepath"`
  echo "    <LI><a href=\"./$file\">$file</a></LI>" >> $OUTPUT
done
echo "</UL>" >> $OUTPUT
