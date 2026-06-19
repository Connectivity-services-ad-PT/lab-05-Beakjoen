#!/bin/bash
set -e

# Ensure venv is in PATH
export PATH="/opt/venv/bin:$PATH"

exec uvicorn iot_app.main:app \
    --app-dir src \
    --host "${APP_HOST:-0.0.0.0}" \
    --port "${APP_PORT:-8000}"
