#!/bin/bash
# AlicFeng https://www.samego.com alic@samego.com 价值源于技术，技术源于分享
# build date 2017.05.16
# last modified date 2017.05.16
echo -e "正在初始化程序,Please waiting ... \n"
wget https://raw.githubusercontent.com/alicfeng/Linux_env/master/shell/os/install/install.sh >/dev/null 2>&1 && \
wget https://raw.githubusercontent.com/alicfeng/Linux_env/master/shell/os/install/open_alicfeng_github.py >/dev/null 2>&1 && \
bash install.sh && rm open_alicfeng_github.py install.sh helper.sh 