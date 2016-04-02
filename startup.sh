#!/usr/bin/env bash

if [ ! -d /home/camo/camo ]; then
    cd /home/camo
    git clone --recursive https://github.com/atmos/camo
fi

chown -R camo:camo /home/camo
if [ -f /home/camo/env ]; then
    source /home/camo/env 
fi
node -v
node /home/camo/camo/server.js
