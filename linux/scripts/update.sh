#!/usr/bin/env bash

# script/update: Update application to run for its current checkout.

set -e

cd "$(dirname "$0")/.."

scripts/bootstrap.sh
