#!/bin/sh
set -e

# Try mounted config directory first, then fall back to default
if [ -f /app/config/config.yml ]; then
    cp /app/config/config.yml /app/config.yml
    echo "Using config from /app/config/config.yml"
elif [ ! -f /app/config.yml ]; then
    echo "No config.yml found — creating from config.default.yml"
    cp /app/config.default.yml /app/config.yml
fi

exec ./mailwhale "$@"
