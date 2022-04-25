#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.5/g' package/base-files/files/bin/config_generate

# add packages
cd package/
git clone https://github.com/liuran001/openwrt-packages
rm -rf luci-theme-*
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git 
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
