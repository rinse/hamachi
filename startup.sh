#!/bin/sh
/etc/init.d/logmein-hamachi restart
tail -F /var/lib/logmein-hamachi/h2-engine.log
