#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# add packages
# cd package/
# mkdir tang
# cd tang
# git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome
# git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon
# git clone --depth=1 https://github.com/vernesong/OpenClash.git
# git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config

# clone smartdns
# cd ../..
# cd feeds/luci/applications
# git clone --depth=1 https://github.com/pymumu/luci-app-smartdns
# cd ../..
# cd packages/net
# git clone --depth=1 https://github.com/pymumu/openwrt-smartdns

# #clone alidrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav
./scripts/feeds update -a
./scripts/feeds install -a
git pull