#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1db97a16-517d-4bb6-aad6-2db470de8c88"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

