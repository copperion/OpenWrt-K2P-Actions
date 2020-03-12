#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.16.1/g' package/base-files/files/bin/config_generate
# Add Luci-App-Clash Package
git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
./scripts/feeds update -a
./scripts/feeds install -a

