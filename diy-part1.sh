#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
rm -rf feeds.conf.default

# Add a feed source
echo 'src-git routing https://github.com/openwrt/routing.git' >>feeds.conf.default
echo 'src-git telephony https://github.com/openwrt/telephony.git' >>feeds.conf.default

