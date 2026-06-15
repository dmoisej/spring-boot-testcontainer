#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Start Docker daemon if not already running
if ! docker info &>/dev/null 2>&1; then
  echo "Starting Docker daemon..."
  dockerd --host unix:///var/run/docker.sock &>/tmp/dockerd.log &

  # Wait for Docker to be ready (up to 30 seconds)
  timeout=30
  while ! docker info &>/dev/null 2>&1; do
    if [ "$timeout" -le 0 ]; then
      echo "ERROR: Docker daemon failed to start within 30s" >&2
      cat /tmp/dockerd.log >&2
      exit 1
    fi
    sleep 1
    timeout=$((timeout - 1))
  done
  echo "Docker daemon started successfully"
else
  echo "Docker daemon is already running"
fi
