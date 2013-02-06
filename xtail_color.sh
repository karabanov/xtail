#!/bin/sh
/usr/bin/tail -f ./radius.log |
while read line
do

  echo $line | sed "/pskov-nas/!d;
  s/accept/`echo -e \\\033[032maccept\\\033[0m`/;
  s/reject/`echo -e \\\033[031mreject\\\033[0m`/;
  s/[ ]testvpn/`echo -e \\\033[035mtestvpn\\\033[0m`/"

done

