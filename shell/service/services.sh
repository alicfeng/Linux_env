#/bin/bash
# 重启所有的服务

# execute func
function execute(){
    if [[ $* =~ "fail" ]] || [[ $* =~ "error" ]] || [[ $# = 1 ]]; then
        notify-send -t 0 -i utilities-terminal "AShellTools" "service "$1" restart | failed"
        exit 1;
    fi
    notify-send -i utilities-terminal "AShellTools" "service "$1" restart | successful"
    sudo service $1 status
}

# 帮助 func
function h(){
    echo echo "Usage: $0 ( r | s | h )"
}

# 重启 func
function r(){
    execute nginx `sudo service nginx restart`
    execute apache2 `sudo service apache2 restart`
    execute mysql `sudo service mysql restart`
    execute mongodb `sudo service mongodb restart`
    execute php5-fpm `sudo service php5-fpm restart`
}

function s(){
    sudo service nginx stop
    sudo service apache2 stop
    sudo service mysql stop
    sudo service mongodb stop
    sudo service php5-fpm stop
}

# main func
function main(){
    case $1 in
        r)
            r
            ;;
        s)
            s
            ;;
        *)
            h
            ;;
    esac
    exit 0
}

main $1


