#!/bin/bash
# AlicFeng alic@samego.com 价值源于技术，技术源于分享
# PS 推荐结合定时任务crontab每分钟执行一次
# * * * * * bash /home/alic/tutorial/Github/Linux_env/shell/os/monitor/temcheck.sh run

# 配置警告时的温度
warningTem=90

# 安装 func
function i(){
    sudo apt-get install lm-sensors beep -y && sudo modprobe coretemp && sudo modprobe pcspkr
}

# 运行 func
function todo(){
    str=`sensors |awk '{print $2}'| sed -n '3p'`
    tem=${str:1:2}
    if [ $tem -gt $warningTem ]
    then
    # 解决crontab中的notify-send 不能显示通知的处理方法 next line
    export DISPLAY=:0.0 && \
    notify-send -i dialog-warning "系统温度提醒" "$(whoami) 你的电脑温度过高 ↦ $warningTem°C \n Quickly To Kill Your Bad Process"
    # 还看不到？ 声音警告    
    beep -r 4 &
    fi 
}
# 为了定时方便，程序执行一分钟 func
function run(){
    for((i=1;i<=10;i++));do
        todo
        sleep 5
    done
}
# 帮助 func
function h(){
    echo echo "Usage: $0 ( i | run | h )"
}

# main to start
case $1 in
    i)
        i
        ;;
    run)
        run
        ;;
    *)
        h
        ;;
esac
exit 0

