#!/bin/sh

/usr/bin/tail -F ./log/radius-macs.log | sed -r "/pskov-nas/!d;
    s/accept/\x1b[32m&\x1b[0m/;
    s/reject/\x1b[31m&\x1b[0m/;
    s/testvpn(.*)\s/\x1b[35m&\x1b[0m/;
    s/[\t]/ /g;"
