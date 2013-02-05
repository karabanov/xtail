#!/bin/sh
/usr/bin/tail -F ./radius.log |
while read line
do

  echo $line | grep -w 'pskov-nas' | sed \
  "s/accept/`echo -e \\\033[032maccept\\\033[0m`/;
  s/reject/`echo -e \\\033[031mreject\\\033[0m`/;
  s/[ ]test[.]+/`echo -e \\\033[031mtest\\\033[0m`/"

done

