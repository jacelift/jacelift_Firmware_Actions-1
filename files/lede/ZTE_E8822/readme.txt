【第一次】
git clone https://github.com/siwind/openwrt openwrt
grep -irl "e8820" target/linux/*

【第二次】
基于RX_WT600修改


【ZTE-E8822文件列表】
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/dts/mt7621_zte_e8822.dts
target/linux/ramips/image/mt7621.mk



======================================

【修改】
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/image/mt7621.mk

【新增】
target/linux/ramips/dts/mt7621_zte_e8822.dts
