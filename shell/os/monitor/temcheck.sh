#!/bin/bash
# AlicFeng alic@samego.com 价值源于技术，技术源于分享
# PS 推荐结合定时任务crontab每分钟执行一次
# * * * * * bash /home/alic/tutorial/Github/Linux_env/shell/os/monitor/temcheck.sh run

# 安装 func
function i(){
    sudo apt-get install apt-get install lm-sensors && sudo modprobe coretemp
}

# 运行 func
function todo(){
    str=`sensors |awk '{print $2}'| sed -n '3p'`
    tem=${str:1:2}
    if [ $tem -gt 90 ]
    then
    notify-send -i dialog-warning "系统温度提醒" "$(whoami) 你的电脑温度过高 \n Quickly To Kill Your Bad Process"
    fi 
}
# 为了定时方便，程序执行一分钟 func
function run(){
    for((i=1;i<=12;i++));do
        todo
        sleep 5
    done
}
# 帮助 func
function h(){
    echo echo "Usage: $0 (install|todo|help)"
}

# main to start
case $1 in
    i)
        i
        ;;
    todo)
        run
        ;;
    *)
        h
        ;;
esac
exit 0

