#!/bin/bash
set -e

echo "=== Update & cài curl ==="
apt-get update -y
apt-get install -y curl

echo "=== Run SSHX ==="
curl -sSf https://sshx.io/get | sh -s run
