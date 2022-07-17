lede17.01


grep -irl "newifi-d2" target/linux/*
【newifi-d2文件列表】
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
target/linux/ramips/image/mt7621.mk



grep -irl "WT600" target/linux/*
【RX_WT600文件列表】
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/dts/mt7621_RX_WT600.dts
target/linux/ramips/image/mt7621.mk

=================================

【修改】
target/linux/ramips/mt7621/base-files/etc/board.d/02_network
target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
target/linux/ramips/image/mt7621.mk

【新增】
target/linux/ramips/dts/mt7621_RX_WT600.dts
==========================================


修复：基于d2修改后只有5GHz无线网络，用E8822.dts（WR1200JS）文件的pcie0和pcie1部分替换mt7621_RX_WT600.dts的相应部分：

&pcie0 {
	mt76@0,0 {
		reg = <0x0000 0 0 0 0>;
		mediatek,mtd-eeprom = <&factory 0x0000>;
	};
};

&pcie1 {
	mt76@0,0 {
		reg = <0x0000 0 0 0 0>;
		mediatek,mtd-eeprom = <&factory 0x8000>;
		ieee80211-freq-limit = <5000000 6000000>;

		led {
			led-sources = <2>;
			led-active-low;
		};
	};
};
