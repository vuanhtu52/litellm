#!/bin/bash
set -e

# This script will start the litellm proxy with hot reloading enabled

# Start the server with uvicorn and hot reloading
# Pass the config file to litellm through environment variable
export LITELLM_CONFIG="/app/config.yaml"

# Start with uvicorn to get hot reloading
exec python -m uvicorn litellm.proxy.proxy_server:app --host 0.0.0.0 --port 4000 --reload 