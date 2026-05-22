#!/bin/sh
set -e

# Create default config if missing
if [ ! -f /app/config.yml ]; then
    echo "No config.yml found — creating from config.default.yml"
    cp /app/config.default.yml /app/config.yml
fi

exec ./mailwhale "$@"
