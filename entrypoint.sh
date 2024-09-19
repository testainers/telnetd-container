#!/bin/sh

echo "ENTRYPOINT"

if [ -z "$TELNET_USER" ]; then
  export TELNET_USER="test"
fi

if [ -z "$TELNET_PWD" ]; then
  export TELNET_PWD="VeryDifficult246!"
fi

adduser -D "$TELNET_USER"

passwd "$TELNET_USER" -d "$TELNET_PWD"

### Start telnetd.
/usr/sbin/telnetd -F
