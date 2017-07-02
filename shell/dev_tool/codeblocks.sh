#!/bin/bash
sudo apt-get install build-essential gdb
# 2.安装codeblock
sudo apt-get install codeblocks codeblocks-dbg wxformbuilder
# (sudo apt-get install contrib，原文作者解释到，这是安装wxSmith，如果不安装就算是使用wxfb。）
#或者直接在Ubuntu软件中心里，关键字搜索codeblock就能找到codeblock进行安装。
#我是在软件中心安装的，然后又在终端安装了codeblocks-dbg，目前还不知道这个事干什么用的。就先装上了。
# 3.安装wxWidgets
sudo apt-get install libwxbase2.8 \
libwxbase2.8-dev \
libwxgtk2.8-0 \
libwxgtk2.8-dev \
libwxgtk2.8-dbg \
wx-common \
wx2.8-headers \
wx2.8-i18n \
wx2.8-examples \
wx2.8-doc
