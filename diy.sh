#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.16.1/g' package/base-files/files/bin/config_generate
# Add Luci-App-Clash Package
git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone https://github.com/rosywrt/luci-theme-rosy.git package/feeds/luci/luci-theme-rosy
./scripts/feeds update -a
./scripts/feeds install -a
