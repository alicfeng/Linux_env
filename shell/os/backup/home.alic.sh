#/bin/bash

# 备份个人目录的所有文件(不包含隐藏文件)
backup=/media/alic/share/backup/$(date +%Y-%m-%d)
mkdir -p $backup

# 想看过程就加个v，想跳过某些文件就用--exclude，比如：
tar -cvf - /home/alic | ( cd $backup; tar -xf -)

# 压缩
tar -czvf $backup.tar.gz $backup

export DISPLAY=:0.0 && \
notify-send -t 0 -i utilities-terminal "AShellTools快速配置工具" "$USER☺备份完成"

