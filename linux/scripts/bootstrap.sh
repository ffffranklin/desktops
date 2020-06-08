#!/usr/bin/env bash

# script/bootstrap: Resolve all dependencies that the application requires to
#                   run.

set -e

cd "$(dirname "$0")/.."

scripts/init.sh

echo "==> Installing packages…"

scripts/pkg.sh


echo "==> Setting up bash…"

../lib/bash/bootstrap.sh
