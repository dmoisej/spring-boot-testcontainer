#!/bin/bash
set -e
java -version
./mvnw -version
docker info || echo "WARNING: Docker not reachable"
docker pull mysql:8 || true
./mvnw -B dependency:go-offline
