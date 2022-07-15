方法一：
安装luci-app-filebrowser_1.1_all.ipk进行管理即可。


方法二：

1、把文件夹filebrowser拷贝到你的U盘（我这里的U盘路径为：/mnt/sda4）。

2、然后修改start.sh里面的路径。

3、命令行执行
cd /mnt/sda4/filebrowser
chmod +x start.sh

openwrt管理web界面——系统——启动项，本地启动脚本exit 0前添加一行启动代码即可：
sleep 15 && /mnt/sda4/filebrowser/start.sh
exit 0
