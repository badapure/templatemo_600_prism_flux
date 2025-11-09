#!/bin/bash
set -e
echo "Stopping NGINX service if running..."
systemctl stop nginx || true
