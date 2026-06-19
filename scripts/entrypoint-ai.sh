#!/bin/bash
set -e

# Ensure venv is in PATH
export PATH="/opt/venv/bin:$PATH"

exec uvicorn ai_service.main:app \
    --app-dir src \
    --host "${AI_HOST:-0.0.0.0}" \
    --port "${AI_PORT:-9000}"
