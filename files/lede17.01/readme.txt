编译报错提示缺少依赖库libcap.so.2，解决方法：

package/network/utils/iproute2/Makefile：
给Package/ip-full和Package/tc补充缺少的依赖+libcap，make menuconfig——libraries：选中libcap即可。
