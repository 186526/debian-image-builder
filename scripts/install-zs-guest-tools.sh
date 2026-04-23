#!/bin/bash
set -e

# 解压并安装 zs-guest-tools.tar.gz
cd /tmp
if [ -f /tmp/zs-guest-tools.tar.gz ]; then
    tar -xzf zs-guest-tools.tar.gz
    cd zs-guest-tools || exit 1
    bash ./zs-tools-install.sh || ./zs-tools-install.sh || true
fi
