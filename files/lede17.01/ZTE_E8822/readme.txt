lede17.01

ZTE_E8822文件列表：
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/dts/mt7621_ZTE_E8822.dts
target/linux/ramips/image/mt7621.mk
==========================================

修改:
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/image/mt7621.mk

新增:
target/linux/ramips/dts/mt7621_ZTE_E8822.dts
===========================================

2.修正LAN与WAN互反及用d2的修正LAN顺序：
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
原始：
	ZTE,E8822)
		ucidef_add_switch "switch0" \
			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
		;;

修正LAN与WAN互反及用d2的修正LAN顺序：
	ZTE,E8822)
		ucidef_add_switch "switch0" \
			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan:5" "6@eth0"
		;;
		
		
		
====================================
	d-team,newifi-d2)
		ucidef_add_switch "switch0" \
			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
		;;


kmod-fs-antfs与ntfs-3g冲突，二选一，否则编译失败


sfe与flowoffload是同一个，一个是旧版另一个是新版
