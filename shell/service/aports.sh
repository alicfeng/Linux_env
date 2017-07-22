#!/bin/bash
echo "Apache 开通的端口映射如下:"
cat /home/${USER}/tutorial/github/alicfeng/Linux_env/server/configure/apache2/ports.conf | sed -n '/Listen 8/p'
