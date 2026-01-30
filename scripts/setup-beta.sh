#!/bin/bash
# Setup script for beta repos
# Updates .mcp.json and ASWRITTEN.md with the APP_NAME

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <APP_NAME>"
  echo "Example: $0 acme"
  exit 1
fi

APP_NAME="$1"

# Update .mcp.json
sed -i '' "s|/mcp/[^\"]*|/mcp/${APP_NAME}|" .mcp.json
echo "Updated .mcp.json with /mcp/${APP_NAME}"

# Update ASWRITTEN.md
sed -i '' "s|/mcp/APP_NAME|/mcp/${APP_NAME}|" ASWRITTEN.md
echo "Updated ASWRITTEN.md with /mcp/${APP_NAME}"

echo "Done. Commit and push to complete setup."
