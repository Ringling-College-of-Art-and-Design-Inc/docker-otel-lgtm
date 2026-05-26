#!/usr/bin/env bash

set -euo pipefail

RELEASE=${1:-latest}
CONTAINER_RUNTIME_OVERRIDE=${2:-}

echo "Building the Grafana OTEL-LGTM image with release ${RELEASE}..."
docker buildx build -f docker/Dockerfile docker --tag rcad/otel-lgtm:"${RELEASE}" --build-arg LGTM_VERSION="${RELEASE}"

