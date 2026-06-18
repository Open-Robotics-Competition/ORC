#!/bin/sh
set -e

# Janky script for self hosting bc I dont want to bother with more proper methods atm

echo "Starting Hugo server..."
# --watch ensures Hugo automatically picks up any file changes if you mount a volume
exec hugo server --bind 0.0.0.0 --port 1313 --appendPort=false --liveReloadPort=443
