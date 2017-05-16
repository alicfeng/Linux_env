#!/bin/bash
# AlicFeng https://www.samego.com alic@samego.com 价值源于技术，技术源于分享
# build date 2017.05.16
# last modified date 2017.05.16

# mian func 构建图形化界面
function main(){
  GUI=$(zenity --list --checklist \
    --height="700" \
    --width="1100" \
    --title="Elementary OS 快速配置工具" \
    --text="请从下面列表中选择需要设置或安装的项目" \
    --column="选择"   --column="工具名称"   --column="工具描述" \
    TRUE              "更新系统源列表"      "更新系统源列表清单"  \
    FALSE             "Google Chrome"     "Google公司开发的免费网页浏览器，十分推荐"  \
    FALSE             "Firefox"           "即火狐浏览器，一个安全高效且体积小的浏览器，它具有速度快、隐私保护、不同设备之间同步数据、个性化定制等特性"  \
    FALSE             "Gparted"           "GParted是一个分区工具，它可以用于创建、删除、移动分区，调整分区大小，检查、复制分区等操作"  \
    FALSE             "FileZilla"         "FileZilla是一个免费开源的FTP软件，分为客户端版本和服务器版本，具备所有的FTP软件功能"  \
    FALSE             "WPS"               "WPS是由金山软件股份有限公司自主研发的一款办公软件套装，可以实现办公软件最常用的文字、表格、演示等多种功能"  \
    FALSE             "有道翻译"           "有道词典是由网易有道出品的全球首款基于搜索引擎技术的全能免费语言翻译软件，为全年龄段学习人群提供优质顺畅的查词翻译服务"  \
    FALSE             "网易云音乐"          "网易云音乐是一款专注于发现与分享的音乐产品,依托专业音乐人、DJ、好友推荐及社交功能,为用户打造全新的音乐生活"  \
    FALSE             "VLC"               "VLC是一款自由、开源的跨平台多媒体播放器及框架，可播放大多数多媒体文件，以及 DVD、音频 CD、VCD 及各类流媒体协议"  \
    FALSE             "Kazam"             "Kazam 是 Ubuntu 上一款简易的桌面屏幕录制工具，它只能录制整个屏幕，可以录制声音"  \
    FALSE             "Smplayer"          "Smplayer是一款开源的跨平台软件，其在Linux、Windows系统中有重要地位，影音播放能力很强大"  \
    FALSE             "Silentcast"        "Silentcast是一款专注于GIF录制工具"  \
    FALSE             "媒体解码框架"        "附带暗转媒体解码框架,完善PC、建议安装"  \
    FALSE             "Audience"          "Audience是一款简洁而强大的视频播放器，怎么说呢：简洁到不能再简洁。它是ElementaryOS系统默认的视频播放器"  \
    FALSE             "Gimp"              "Gimp是一个图片编辑器，优雅地取代windows、mac下的另一个ps软件"  \
    FALSE             "gedit"             "gedit是一个基于GNOME桌面环境下兼容UTF-8的文本编辑器" \
    FALSE             "x11vnc"            "x11vnc是一种位图显示的视窗系统 。x11vnc服务端可以实现Windows远程Linux桌面系统" \
    FALSE             "Shadowsocks-qt5"   "Shadowsocks-qt5是一个科学上网利器工具。" \
    FALSE             "VirtualBox"        "VirtualBox是一款由德国 Innotek 公司开发的开源虚拟机软件。它不仅具有丰富的特色以及轻量级的体积，而且性能也很优异" \
    FALSE             "Steam"             "Steam是一个整合游戏下载平台，Linuxer游戏者嗨翻天" \
    FALSE             "electronic-wechat" "electronic-wechat是一个基于nodeJS开发的Linux系统微信。前提已经安装nodeJS、npm" \
    FALSE             "Transmission"      "Transmission 是一个 BitTorrent 客户端软件，它支持速度限制、制作种子、远程控制、磁力链接、数据加密、损坏修复、数据来源交换等功能" \
    FALSE             "thunderbird"       "thunderbird是又是一个简洁易用的邮箱客户端" \
    FALSE             "Okular"            "Okular 是一个 PDF 文档阅读软件，支持 PDF、TIFF、CHM、ODF、EPUB、mobi 等文档格式" \
    FALSE             "FocusWriter"       "FocusWriter 是一款写作软件" \
    FALSE             "Typora"            "Typora是极简的Markdown编辑器，合并了写作和预览。支持表格、代码编辑，拖拽插图等，非常好用；推荐安装" \
    FALSE             "OBS Studio"        "OBS Studio 是一款跨平台的，开源的视频录制和在线直播客户端软件。我觉得一点不好的体验就是不能刻录整个屏幕" \
    FALSE             "Remmina"           "Remmina是一个用远程桌面软件，提供了RDP、VNC、XDMCP、SSH等远程连接协议的支持，远程客户端推荐" \
    FALSE             "Meld"              "Meld是针对开发者的视觉差异和合并工具。MELD帮助您比较文件、目录和版本控制的项目。既可以查看差异有可以同步" \
    FALSE             "TeamViewer"        "CS架构的远程工具" \
    FALSE             "Deepin-Scrot"      "deepin-scrot是深度团队开发的一个截图工具，推荐" \
    FALSE             "Albert Spotlight"  "Albert Spotlight是 Ubuntu的一项快速、随打即找、系统支援的桌面搜寻特色" \
    FALSE             "Guake Terminal"    "Guake是一个下拉式的gnome桌面环境下的终端程序，因此你只需要按一个键就可以调用他，然后再按一次以便隐藏他.一句话：GuakeTerminal是linux下完美帅气的终端。非常推荐" \
    FALSE             "bleachbit"         "bleachbit是系统ubuntu系统减肥的一门"中药"，用于清理系统没用的垃圾文件" \
    FALSE             "psensor"           "psensor是监控系统硬件实时状况的一款软件" \
    FALSE             "catfish"           "catfish简称文件搜索神器。" \
    FALSE             "docky"             "dockey是一款一个号称花钱也买不到的菜单启动器。为什么这麽说的？很简单：它是开源的，很简洁更美观" \
    FALSE             "Indicator Netspeed" "indicator-sysmonitor是一个系统动态信息监控工具。可以实时查看电脑的cpu，内存占用率，更可以查看网速，非常方便" \
    FALSE             "TLP"               "TLP 是一款Linux流行的电源工具软件。你可以使用TLP来调整系统电池，有助于有更好延长电池寿命" \
    FALSE             "menulibre"         "menulibre是一个简洁易用的菜单编辑器" \
    FALSE             "Jetbrains全家桶"    "Jetbrains_IDEA 全家桶基基于java语言开的一个工具套餐，而且基本覆盖了主流的开发编程语言，还包含了开发ios/macOS的工具" \
    FALSE             "Brackets"          "Brackets是一款使用 HTML，CSS，JavaScript 创建的开源的针对 Web 开发的编辑器" \
    FALSE             "Sublime Text"      "Sublime Text是一个轻量、简洁、高效、跨平台的编辑器" \
    FALSE             "Atom"              "Atom是GitHub推出的一款基于Web技术开发的桌面端的编辑器，其主要的特点是现代, 易用, 可定制" \
    FALSE             "sqliteman"         "sqliteman是一款小巧的图形化管理SQLite数据库的软件。轻量级、小巧、功能全面。为它点个赞，推荐" \
    FALSE             "Git、GitG"         "Git是一个开源的分布式版本控制系统，gitg是一个用于查看Git版本控制系统的工具，基于Gnome桌面环境" \
    FALSE             "monodevelop"       "MonoDevelop 是个适用于Linux、Mac和Windows的开放源代码集成开发环境，目前支持的语言有Python、Vala、C#、Java、BOO、Nemerle、Visual Basic .NET、CIL、C与C++" \
    FALSE             "MySQL workbench"   "MySQL workbench是一款专为MySQL设计的ER/数据库建模工具,但是在ElementaryOS还是存在不少的问题的" \
    FALSE             "genymotion"        "Genymotion是一套完整的工具，它提供了Android虚拟环境，支持Windows、Linux和Mac OS等操作系统，容易安装和使用，开发安卓绝配" \
    FALSE             "asm"               "Android Screen Monitor简称ASM，是一款监视手机或者模拟器屏幕的工具" \
    FALSE             "enca、iconv"       "enca、iconv都是文件编码转换工具" \
    FALSE             "Figlet"            "Figlet是一个将字符串在终端生成一个logo的终端工具" \
    FALSE             "oh-my-zsh"         "oh-my-zsh是终极Shell，就这么一句话" \
    FALSE             "Asciinema"         "Asciinema 是一个用 ClojureScript 编写的开源命令行录屏工具" \
    FALSE             "Aria2"             "aria2是 Linux 下一个命令行下轻量级、多协议、多来源的高速下载工具" \
    FALSE             "Proxychains4"      "Proxychains4是一个终端挂代理的工具，可自由切换代理。使用简单只需要在命令前加上proxychains4即可" \
    TRUE              "清理修复软件"        "清理无用的软件安装包以及依赖，修复不能运行的软件"  \
    --separator="|");

  if [[ $GUI ]]
  then
  notify-send -t 0 "价值源于技术，技术源于分享" "给AlicFeng的Linux_env一个start呗" -i face-smile-big
    # 更新系统操作
    if [[ $GUI == *"更新系统源列表"* ]]
    then
    showDoingTask 更新系统源列表 
    sudo apt-get update -y && showResultTip 更新系统源列表
    fi

    # 安装Google Chrome浏览器
    if [[ $GUI == *"Google Chrome浏览器"* ]]
    then
    showDoingTask "安装Google Chrome浏览器"  
    sudo apt-get install google-chrome-stable -y && showResultTip "安装Google Chrome浏览器"
    fi

    # 安装Google Chrome浏览器
    if [[ $GUI == *"Firefox浏览器"* ]]
    then
    showDoingTask Firefox浏览器
    sudo apt-get install firefox -y && showResultTip "安装Firefox浏览器"
    fi

    # 安装Gparted
    if [[ $GUI == *"Gparted"* ]]
    then
    showDoingTask Gparted
    sudo apt-get install gparted -y && showResultTip "安装Gparted"
    fi

    # 安装FileZilla
    if [[ $GUI == *"FileZilla"* ]]
    then
    showDoingTask FileZilla
    sudo apt-get install filezilla && showResultTip "安装FileZilla"
    fi

    # 安装WPS
    if [[ $GUI == *"WPS"* ]]
    then
    showDoingTask WPS
    wget -c -P $(pwd) http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb -O wps.deb
    sudo dpkg -i wps.deb && sudo apt-get install -fy && showResultTip "WPS"
    fi

    # 安装有道词典
    if [[ $GUI == *"有道词典"* ]]
    then
    showDoingTask "有道词典"
    wget -c -P $(pwd) http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-deepin_amd64.deb -O youdao.deb
    sudo dpkg -i youdao.deb && sudo apt-get install -fy && showResultTip "有道词典"
    fi

    # 安装网易云音乐
    if [[ $GUI == *"网易云音乐"* ]]
    then
    showDoingTask "网易云音乐"
    wget -c -P $(pwd) http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb -O netease.deb
    sudo dpkg -i netease.deb && sudo apt-get install -fy && showResultTip "网易云音乐"
    fi

    # 安装VLC
    if [[ $GUI == *"VLC"* ]]
    then
    showDoingTask "VLC" && sudo apt-get install vlc -y && showResultTip "VLC"
    fi

    # 安装Kazam
    if [[ $GUI == *"Kazam"* ]]
    then
    showDoingTask "Kazam" && sudo add-apt-repository ppa:and471/kazam-daily-builds -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install kazam && sudo add-apt-repository ppa:and471/kazam-daily-builds -ry && showResultTip "Kazam"
    fi

    # 安装SMPlayer
    if [[ $GUI == *"SMPlayer"* ]]
    then
    showDoingTask "SMPlayer" && sudo apt-get install smplayer -y && showResultTip "SMPlayer"
    fi

    # 安装SilentCast
    if [[ $GUI == *"SilentCast"* ]]
    then
    showDoingTask "SilentCast" && sudo add-apt-repository ppa:sethj/silentcast -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install silentcast && sudo add-apt-repository ppa:sethj/silentcast -ry showResultTip "SilentCast"
    fi

    # 安装Audience
    if [[ $GUI == *"Audience"* ]]
    then
    showDoingTask "Audience" && sudo apt-get install audience -y && showResultTip "Audience"
    fi

    # 安装媒体解码框架
    if [[ $GUI == *"媒体解码框架"* ]]
    then
    showDoingTask "媒体解码框架"
    sudo apt-add-repository ppa:mc3man/trusty-media -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install Ubuntu-restricted-extras ffmpeg gstreamer0.10-plugins-ugly \
    libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav
    sudo apt-add-repository ppa:mc3man/trusty-media -ry && showResultTip "媒体解码框架"
    fi

    # 安装Gimp
    if [[ $GUI == *"Gimp"* ]]
    then
    showDoingTask "Gimp" && sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install gimp && sudo add-apt-repository ppa:otto-kesselgulasch/gimp -ry showResultTip "Gimp"
    fi

    # 安装Krita
    if [[ $GUI == *"Krita"* ]]
    then
    showDoingTask "Krita" && sudo add-apt-repository ppa:kubuntu-ppa/backports -y && \
    sudo apt-get update >/dev/null>&1 && sudo apt-get install kdelibs-bin kbuildsycoca4 --noincremental krita -y \
    && sudo add-apt-repository ppa:kubuntu-ppa/backports -ry showResultTip "Krita"
    fi

    # 安装gedit
    if [[ $GUI == *"gedit"* ]]
    then
    showDoingTask "gedit" && sudo apt-get install gedit -y && showResultTip "gedit"
    fi

    # 安装x11vnc
    if [[ $GUI == *"x11vnc"* ]]
    then
    showDoingTask "x11vnc" && sudo apt-get install x11vnc -y && showResultTip "x11vnc"
    fi

    # 安装Shadowsocks-qt5
    if [[ $GUI == *"Shadowsocks-qt5"* ]]
    then
    showDoingTask "Shadowsocks-qt5" && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install shadowsocks-qt5 && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -ry showResultTip "Shadowsocks-qt5"
    fi

    # 安装VirtualBox
    if [[ $GUI == *"VirtualBox"* ]]
    then
    showDoingTask "VirtualBox"
    wget -c -P $(pwd) http://download.virtualbox.org/virtualbox/5.1.14/virtualbox-5.1_5.1.14-112924~Ubuntu~xenial_amd64.deb -O virtualbox.deb
    sudo dpkg -i virtualbox.deb && sudo apt-get install -fy && showResultTip "VirtualBox"
    fi

    # 安装Steam
    if [[ $GUI == *"Steam"* ]]
    then
    showDoingTask "Steam" && sudo apt-get install steam -y && showResultTip "Steam"
    fi

    # 安装微信electronic-wechat
    if [[ $GUI == *"electronic-wechat"* ]]
    then
    showDoingTask "electronic-wechat" && \
    git clone https://github.com/geeeeeeeeek/electronic-wechat.git && \
    cd electronic-wechat && \
    npm install && sudo npm start && \
    showResultTip "electronic-wechat"
    fi

    # 安装Transmission
    if [[ $GUI == *"Transmission"* ]]
    then
    showDoingTask "Transmission" && sudo apt-get install transmission -y && showResultTip "Transmission"
    fi

    # 安装ThunderBird
    if [[ $GUI == *"GThunderBirdmp"* ]]
    then
    showDoingTask "ThunderBird" && sudo apt-get install thunderbird -y && showResultTip "ThunderBird"
    fi

    # 安装Okular
    if [[ $GUI == *"Okular"* ]]
    then
    showDoingTask "Okular" && sudo apt-get install okular -y && showResultTip "Okular"
    fi

    # 安装FocusWriter
    if [[ $GUI == *"FocusWriter"* ]]
    then
    showDoingTask "FocusWriter" && sudo apt-get install focuswriter -y && showResultTip "FocusWriter"
    fi

    # 安装Typora
    if [[ $GUI == *"Typora"* ]]
    then
    showDoingTask "Typora" && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE \
    && sudo add-apt-repository 'deb https://typora.io linux/' && sudo apt-get update >/dev/null>&1 \
    && sudo apt-get install typora -y  && showResultTip "Typora"
    fi

    # 安装OBS Studio
    if [[ $GUI == *"OBS Studio"* ]]
    then
    showDoingTask "OBS Studio"
    sudo apt-get install ffmpeg -y
    sudo add-apt-repository ppa:obsproject/obs-studio -y
    sudo apt-get update && sudo apt-get install obs-studio -y
    sudo add-apt-repository ppa:obsproject/obs-studio -ry
    showResultTip "OBS Studio"
    fi 

    # 安装Remmina
    if [[ $GUI == *"Remmina"* ]]
    then
    showDoingTask "Remmina" && sudo apt-get install remmina -y && showResultTip "Remmina"
    fi 

    # 安装Meld
    if [[ $GUI == *"Meld"* ]]
    then
    showDoingTask "Meld" && sudo apt-get install meld -y && showResultTip "Meld"
    fi 

    # 安装TeamViewer
    if [[ $GUI == *"TeamViewer"* ]]
    then
    showDoingTask "TeamViewer" && \
    wget -c -P $(pwd) https://download.teamviewer.com/download/teamviewer_i386.deb \
    && sudo dpkg -i teamviewer_i386.deb && sudo apt-get install -fy && showResultTip "TeamViewer"
    fi

    # 安装Deepin-Scrot
    if [[ $GUI == *"Deepin-Scrot"* ]]
    then
    showDoingTask "Deepin-Scrot" && \
    wget -c -P $(pwd) http://packages.linuxdeepin.com/deepin/pool/main/d/deepin-scrot/deepin-scrot_2.0-0deepin_all.deb \
    && sudo dpkg -i deepin-scrot_2.0-0deepin_all.deb && sudo apt-get install -fy && showResultTip "Deepin-Scrot"
    fi

    # 安装Albert Spotlight
    if [[ $GUI == *"Albert Spotlight"* ]]
    then
    showDoingTask "Albert Spotlight" && sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install albert && sudo add-apt-repository ppa:noobslab/macbuntu -ry showResultTip "Albert Spotlight"
    fi

    # 安装Guake Terminal
    if [[ $GUI == *"Guake TerminalGimp"* ]]
    then
    showDoingTask "Guake Terminal" && sudo apt-get install guake -y && showResultTip "Guake Terminal"
    fi

    # 安装bleachbit
    if [[ $GUI == *"bleachbit"* ]]
    then
    showDoingTask "bleachbit" && sudo add-apt-repository ppa:n-muench/programs-ppa -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install bleachbit && sudo add-apt-repository ppa:n-muench/programs-ppa -ry showResultTip "bleachbit"
    fi

    # 安装psensor
    if [[ $GUI == *"psensor"* ]]
    then
    showDoingTask "psensor" && sudo add-apt-repository ppa:jfi/ppa -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install lm-sensors hddtemp psensor -y && sudo add-apt-repository ppa:jfi/ppa -ry \
    && showResultTip "psensor"
    fi

    # 安装catfish
    if [[ $GUI == *"catfish"* ]]
    then
    showDoingTask "catfish" && sudo apt-get install catfish -y && showResultTip "catfish"
    fi

    # 安装docky
    if [[ $GUI == *"docky"* ]]
    then
    showDoingTask "docky" && sudo apt-get install docky -y && showResultTip "docky"
    fi

    # 安装Indicator Netspeed
    if [[ $GUI == *"Indicator Netspeed"* ]]
    then
    showDoingTask "Indicator Netspeed" && sudo add-apt-repository ppa:nilarimogard/webupd8 -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install indicator-netspeed -y && sudo add-apt-repository ppa:nilarimogard/webupd8 -ry \
    && showResultTip "Indicator Netspeed"
    fi

    # 安装TLP
    if [[ $GUI == *"TLP"* ]]
    then
    showDoingTask "TLP" && sudo add-apt-repository ppa:linrunner/tlp -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install tlp tlp-rdw -y && sudo add-apt-repository ppa:linrunner/tlp -ry && showResultTip "TLP"
    fi

    # 安装menulibre
    if [[ $GUI == *"menulibre"* ]]
    then
    showDoingTask "menulibre" && sudo add-apt-repository ppa:menulibre-dev/devel -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install menulibre -y && sudo add-apt-repository ppa:menulibre-dev/devel -ry && showResultTip "menulibre"
    fi

    # 安装Jetbrains全家桶
    if [[ $GUI == *"Jetbrains全家桶"* ]]
    then
    echo "Jetbrains全家桶Office Website➜ https://www.jetbrains.com"
    fi

    # 安装Brackets
    if [[ $GUI == *"Brackets"* ]]
    then
    showDoingTask "Brackets" && sudo add-apt-repository ppa:webupd8team/brackets -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install brackets -y && sudo add-apt-repository ppa:webupd8team/brackets -ry && showResultTip "Brackets"
    fi

    # 安装Sublime Text
    if [[ $GUI == *"Sublime Text"* ]]
    then
    echo "Sublime Text Website➜ https://www.sublimetext.com/"
    fi

    # 安装Atom
    if [[ $GUI == *"Atom"* ]]
    then
    showDoingTask "Atom" && sudo add-apt-repository ppa:webupd8team/atom -y && sudo apt-get update >/dev/null>&1
    sudo apt-get install atom -y && sudo add-apt-repository ppa:webupd8team/atom -ry && showResultTip "Atom"
    fi

    # 安装sqliteman
    if [[ $GUI == *"sqliteman"* ]]
    then
    showDoingTask "sqliteman" && sudo apt-get install sqliteman -y && showResultTip "sqliteman"
    fi

    # 安装Git、GitG
    if [[ $GUI == *"Git、GitG"* ]]
    then
    showDoingTask "Git、GitG" && sudo apt-get install git gitg -y && showResultTip "Git、GitG"
    fi

    # 安装Gimp
    if [[ $GUI == *"monodevelop"* ]]
    then
    showDoingTask "monodevelop" && sudo apt-get install monodevelop g++ xterm -y && showResultTip "monodevelop"
    fi

    # 安装MySQL workbench
    if [[ $GUI == *"MySQL workbench"* ]]
    then
    showDoingTask "MySQL workbench" && wget -c -P $(pwd) \
    https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community-6.3.9-1ubuntu16.04-amd64.deb \
    && sudo dpkg -i mysql-workbench-community-6.3.9-1ubuntu16.04-amd64.deb && sudo apt-get install -fy \
    && showResultTip "MySQL workbench"
    fi

    # 安装genymotion
    if [[ $GUI == *"genymotion"* ]]
    then
    echo "Sorry please manual installation,Website➜ http://www.genymotion.net/"
    fi

    # 安装Gimp
    if [[ $GUI == *"asm"* ]]
    then
    showDoingTask "asm"
    wget -c -P $(pwd) https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/android-screen-monitor/ASM_2_50.zip
    showResultTip "下载asm"
    fi

    # 安装enca、iconv
    if [[ $GUI == *"enca、iconv"* ]]
    then
    showDoingTask "enca、iconv" && sudo apt-get install enca iconv -y && showResultTip "enca、iconv"
    fi

    # 安装Figlet
    if [[ $GUI == *"Figlet"* ]]
    then
    showDoingTask "Figlet" && sudo apt-get install figlet -y && showResultTip "Figlet"
    fi

    # oh-my-zsh
    if [[ $GUI == *"oh-my-zsh"* ]]
    then
    showDoingTask "oh-my-zsh" && sudo apt-get install git -y \
    wget -c -P $(pwd) https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh && \
    sudo sh $(pwd)/install.sh && rm $(pwd)/install.sh && showResultTip "oh-my-zsh"
    fi

    # 安装Asciinema
    if [[ $GUI == *"Asciinema"* ]]
    then
    showDoingTask "Asciinema" && sudo apt-get install asciinema -y && showResultTip "Asciinema"
    fi

    # 安装Aria2
    if [[ $GUI == *"Aria2"* ]]
    then
    showDoingTask "Aria2" && sudo apt-get install aria2 -y && showResultTip "Aria2"
    fi

    # 安装Proxychains4
    if [[ $GUI == *"Proxychains4"* ]]
    then
    showDoingTask "Proxychains4" && git clone https://github.com/rofl0r/proxychains-ng.git && \
    cd proxychains-ng && sudo ./configure –prefix=/usr –sysconfdir=/etc && sudo make && sudo make install && \
    sudo make install-config && cd .. && rm -rf proxychains-ng && showResultTip "Aria2"
    fi

    # 清理修复软件
    if [[ $GUI == *"清理修复软件"* ]]
    then
      clear && sudo apt-get install -t && sudo apt-get autoremove && sudo apt-get  autoclean && showResultTip "清理修复软件"
    fi
    
    # 完成通知
    clear && about && open
  fi
}

# 显示任务生在执行
showDoingTask(){
  clear
  echo "Hello $USER , Terminal is installing $1 ..."
  notify-send -i utilities-terminal "AShellTools快速配置工具" "Hello $USER , Terminal is installing $1"
}

# 显示安装结果
showResultTip(){
  notify-send -t 10000 -i utilities-terminal "AShellTools快速配置工具" "$USER☺$1完成"
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

# 浏览器打开
function open(){
(
cat <<EOF
#!/usr/bin/env python
#-*- coding:UTF-8 -*-
import webbrowser
webbrowser.open_new("https://github.com/alicfeng")
EOF
) > open_alicfeng_github.py
  python open_alicfeng_github.py >/dev/null 2>&1 &
  #rm open_alicfeng_github.py
}

# 程序入口
main
