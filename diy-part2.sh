#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.5/g' package/base-files/files/bin/config_generate

# add packages
cd package/
mkdir tang
cd tang
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/fw876/helloworld.git
git clone --depth=1 https://github.com/vernesong/OpenClash.git
git clone --depth 1 https://github.com/messense/aliyundrive-webdav
