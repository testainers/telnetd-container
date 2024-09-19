#!/bin/sh

echo "ENTRYPOINT"

if [ -z "$TELNET_USER" ]; then
  export TELNET_USER="test"
fi

if [ -z "$TELNET_PWD" ]; then
  export TELNET_PWD="VeryDifficult"
fi

adduser -D "$TELNET_USER"

echo "$TELNET_USER:$TELNET_PWD" | chpasswd

### Start telnetd.
/usr/sbin/telnetd -F
