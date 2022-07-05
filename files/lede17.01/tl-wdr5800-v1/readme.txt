文件列表：
target/linux/ar71xx/config-4.14
target/linux/ar71xx/generic/config-default
target/linux/ar71xx/config-4.9
target/linux/ar71xx/files/arch/mips/ath79/Makefile
target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wdr5800-v1.c
target/linux/ar71xx/files/arch/mips/ath79/machtypes.h
target/linux/ar71xx/files/arch/mips/ath79/Kconfig.openwrt
target/linux/ar71xx/base-files/etc/board.d/02_network
target/linux/ar71xx/base-files/etc/board.d/01_leds
target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
target/linux/ar71xx/base-files/etc/diag.sh
target/linux/ar71xx/base-files/lib/ar71xx.sh
target/linux/ar71xx/base-files/lib/upgrade/platform.sh
target/linux/ar71xx/image/generic-tp-link.mk

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
