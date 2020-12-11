#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/luci-app-koolproxyR
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/honwen/luci-app-aliddns.git package/luci-app-aliddns
git clone -b master https://github.com/vernesong/OpenClash package/OpenClash
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-ssr-plus package/kenzok8/luci-app-ssr-plus
svn co https://github.com/kenzok8/openwrt-packages/trunk/tcping package/kenzok8/tcping
svn co https://github.com/kenzok8/openwrt-packages/trunk/naiveproxy package/kenzok8/naiveproxy

svn co https://github.com/pkpkgtr1/pkpkgtr-openwrt-package/trunk/luci-app-advancedsetting package/luci-app-advancedsetting
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/jerrykuku

#================================================= 主题
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-opentomcat package/luci-theme-opentomcat
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial package/luci-theme-atmaterial
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial


sed -i 's/1.14/1.15/g' feeds/packages/lang/golang/golang/Makefile
sed -i 's/=4/=2/g' feeds/packages/lang/golang/golang/Makefile
sed -i 's/7011af3bbc2ac108d1b82ea8abb87b2e63f78844f0259be20cde4d42c5c40584/28bf9d0bcde251011caae230a4a05d917b172ea203f2a62f2c2f9533589d4b4d/g' feeds/packages/lang/golang/golang/Makefile
