
grep -irl "newifi-d2" target/linux/*

target/linux/ramips/image/mt7621.mk
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts

【修改】
target/linux/ramips/image/mt7621.mk
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/mt7621/base-files/etc/board.d/02_network

【新增】
target/linux/ramips/dts/mt7621_RX_WT600.dts

=================================================

1、解决wifi问题：
【16MB】mt7621_cudy_wr1300.dts：
取两个段pcie0和pcie1，并去除“mtd-mac-address = <&bdinfo 0xde00>;”，然后替换到文件mt7621_d-team_newifi-d2.dts。

最后把mt7621_d-team_newifi-d2.dts改名为mt7621_RX_WT600.dts。
