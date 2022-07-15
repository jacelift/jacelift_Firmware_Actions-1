#!/bin/sh

# -a IP地址
# -p 端口
# -r root目录路径
# -l 日志文件路径log
# -d 数据库文件路径

cd /mnt/sda1/filebrowser
./filebrowser -a 0.0.0.0 -p 8080 -r / -l ./filebrowser.log -d ./filebrowser.db
