grep -irl "wdr6500" target/linux/*


【新增wdr5800-v1】
target/linux/ar71xx/image/generic-tp-link.mk
target/linux/ar71xx/base-files/lib/ar71xx.sh
target/linux/ar71xx/base-files/lib/upgrade/platform.sh
target/linux/ar71xx/base-files/etc/diag.sh
target/linux/ar71xx/base-files/etc/board.d/02_network
target/linux/ar71xx/base-files/etc/board.d/01_leds
target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac


【未改】
target/linux/ar71xx/generic/config-default
target/linux/ar71xx/config-4.9
target/linux/ar71xx/config-4.14

【无关】
target/linux/ar71xx/files/arch/mips/ath79/machtypes.h
target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wdr6500-v6.c
target/linux/ar71xx/files/arch/mips/ath79/mach-tl-wdr6500-v2.c
target/linux/ar71xx/files/arch/mips/ath79/Makefile
target/linux/ar71xx/files/arch/mips/ath79/Kconfig.openwrt
