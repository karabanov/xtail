#!/bin/sh
/usr/bin/tail -F /var/log/radius-macs.log |
while read line
do

  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'accept' | /usr/bin/sed "s/accept/`echo -e \\\033[032maccept\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'reject' | /usr/bin/sed "s/reject/`echo -e \\\033[031mreject\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'testvpnnikita' | /usr/bin/sed "s/testvpnnikita/`echo -e \\\033[031mtestvpnnikita\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'testvpnalek' | /usr/bin/sed "s/testvpnalek/`echo -e \\\033[031mtestvpnalek\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'testvpnalex' | /usr/bin/sed "s/testvpnalex/`echo -e \\\033[031mtestvpnalex\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'testvpn2' | /usr/bin/sed "s/testvpn2/`echo -e \\\033[031mtestvpn2\\\033[0m`/"
  echo $line | grep -E -i -w --colour=never 'pskov-nas' | grep -E -i -w --color=never 'testvpnserhio' | /usr/bin/sed "s/testvpnserhio/`echo -e \\\033[031mtestvpnserhio\\\033[0m`/"

done

