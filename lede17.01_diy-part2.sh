#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


#===================================================================================================

# 【2】===========Start 添加tl-wdr5800-v1机型到lede17.01源码2022.7.5===============
# 参考tl-wdr6500-v2机型
# 【2.1】删除原有文件13个
rm -rf target/linux/ar71xx/config-4.14
rm -rf target/linux/ar71xx/generic/config-default
rm -rf target/linux/ar71xx/config-4.9
rm -rf target/linux/ar71xx/files/arch/mips/ath79/Makefile
rm -rf target/linux/ar71xx/files/arch/mips/ath79/machtypes.h
rm -rf target/linux/ar71xx/files/arch/mips/ath79/Kconfig.openwrt
rm -rf target/linux/ar71xx/base-files/etc/board.d/02_network
rm -rf target/linux/ar71xx/base-files/etc/board.d/01_leds
rm -rf target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
rm -rf target/linux/ar71xx/base-files/etc/diag.sh
rm -rf target/linux/ar71xx/base-files/lib/ar71xx.sh
rm -rf target/linux/ar71xx/base-files/lib/upgrade/platform.sh
rm -rf target/linux/ar71xx/image/generic-tp-link.mk

# 【bug1】解决编译报错提示缺少依赖库libcap.so.2的问题
rm -rf package/network/utils/iproute2/Makefile

# 【2.2】拷贝tl-wdr5800-v1相关文件14个
chmod 755 -R files/lede17.01/*
chmod 755 -R files/lede17.01/tl-wdr5800-v1/*
#======================
cp -f files/lede17.01/tl-wdr5800-v1/config-4.14 target/linux/ar71xx/config-4.14
cp -f files/lede17.01/tl-wdr5800-v1/config-default target/linux/ar71xx/generic/config-default
cp -f files/lede17.01/tl-wdr5800-v1/config-4.9 target/linux/ar71xx/config-4.9
cp -f files/lede17.01/tl-wdr5800-v1/Makefile target/linux/ar71xx/files/arch/mips/ath79/Makefile
cp -f files/lede17.01/tl-wdr5800-v1/mach-tl-wdr5800-v1.c target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wdr5800-v1.c
cp -f files/lede17.01/tl-wdr5800-v1/machtypes.h target/linux/ar71xx/files/arch/mips/ath79/machtypes.h
cp -f files/lede17.01/tl-wdr5800-v1/Kconfig.openwrt target/linux/ar71xx/files/arch/mips/ath79/Kconfig.openwrt
cp -f files/lede17.01/tl-wdr5800-v1/02_network target/linux/ar71xx/base-files/etc/board.d/02_network
cp -f files/lede17.01/tl-wdr5800-v1/01_leds target/linux/ar71xx/base-files/etc/board.d/01_leds
cp -f files/lede17.01/tl-wdr5800-v1/11-ath10k-caldata target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
cp -f files/lede17.01/tl-wdr5800-v1/diag.sh target/linux/ar71xx/base-files/etc/diag.sh
cp -f files/lede17.01/tl-wdr5800-v1/ar71xx.sh target/linux/ar71xx/base-files/lib/ar71xx.sh
cp -f files/lede17.01/tl-wdr5800-v1/platform.sh target/linux/ar71xx/base-files/lib/upgrade/platform.sh
cp -f files/lede17.01/tl-wdr5800-v1/generic-tp-link.mk target/linux/ar71xx/image/generic-tp-link.mk


# 【bug1.1】
cp -f files/lede17.01/Makefile package/network/utils/iproute2/Makefile

# ==============End 添加tl-wdr5800-v1机型到lede17.01源码==================


#【4】更改openwrt的主机名，Modify hostname
sed -i 's/OpenWrt/TL-WDR5800-V1/g' package/base-files/files/bin/config_generate

#【5】删除files目录
rm -r files





# sed -i '/xxxx定位需要的字符串xxx/a\xxx在定位字符串后面一行（换行）需要添加的字符串内容xxx' xx路径xx/xx文件xx.txt
# 注意：确保sh脚本是unix（LF）UTF-8，而非Windows（CR LF）UTF-8，或者用sed命令去掉sed -i 's/\r$//' xxx.sh。
# 注意：字符串中遇到特殊字符需要用反斜杠屏蔽掉，\n为换行，/xx/a\为定位字符串之后。

# 特殊字符有：
# 1、$ 美元符
# 2、\ 反斜杠
# 3、· 反引号（位于Tab键上方）
# 4、" 双引号
# 5、* 星号
# 6、[ ] 左右中括号
# 7、? 问号
# 8、< > 左右尖括号
# 9、; 分号

# windows下，每一行的结尾是\n\r，而在linux下文件的结尾是\n，
# 那么你在windows下编辑过的文件在linux下打开看的时候每一行的结尾就会多出来一个字符\r,
# 用cat -A yourfile时你可以看到这个\r字符被显示为^M，
# 这时候只需要删除这个字符就可以了。可以使用命令把 xxxxxxx.sh 中的\r 替换成空白：
# sed -i 's/\r$//' xxx.sh
