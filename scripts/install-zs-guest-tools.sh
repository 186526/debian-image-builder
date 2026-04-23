#!/bin/bash
set -e

# 解压并安装 zs-guest-tools.tar.gz
cd /tmp
if [ -f /tmp/zs-guest-tools.tar.gz ]; then
    mkdir -p /tmp/zs-guest-tools
    tar -xzf zs-guest-tools.tar.gz -C /tmp/zs-guest-tools
    cd /tmp/zs-guest-tools || exit 1
    bash ./zs-tools-install.sh || ./zs-tools-install.sh || true
fi
