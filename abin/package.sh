#! /bin/bash

set -eo pipefail

if [ -f ${CHART_VERSION} ]; then
  echo "WARNING: CHART_VERSION environment variable not set. Defaulting to '0.1.0'. Robots should set CHART_VERSION to a valid SemVer string."
  CHART_VERSION=0.1.0
fi

helm lint chart/triple-play

set -x

helm package --version ${CHART_VERSION} chart/triple-play
