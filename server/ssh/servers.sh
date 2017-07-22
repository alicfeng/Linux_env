#!/bin/bash
# AlicFeng https://www.samego.com alic@samego.com 价值源于技术，技术源于分享
# build date 2017.05.16
# last modified date 2017.05.16

# mian func 构建图形化界面 ssh
function main(){
  GUI=$(zenity --list --checklist \
    --height="400" \
    --width="600" \
    --title="samegoShell" \
    --text="SSH UI Login For AlicFeng" \
    --column="选择"   --column="主机" --column="密码"   --column="描述" \
    FALSE              "localhost"      "fenglican"      "localhost"  \
    FALSE              "localhost0"      "fenglican"      "localhost"  \
    --separator="|");

  if [[ $GUI ]]
  then
    # 更新系统操作
    if [[ $GUI == *"localhost"* ]]
    then
    sshpass -p fenglican ssh -p 22 alic@192.168.31.46
    fi
    
    # 完成通知
    #clear && about
  fi
}

# 关于
function about(){
clear
cat <<EOF
------------------------------------------------------------------------------
$(sudo apt-get install figlet -y >/dev/null 2>&1 && figlet " Alic Feng Shell")
Author:AlicFeng      Email:alic@samego.com     价值源于技术，贡献源于分享
------------------------------------------------------------------------------
EOF
}

# 程序入口
main
