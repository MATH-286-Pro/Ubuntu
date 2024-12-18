## 必要操作

## 更换镜像源 (https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
	sudo vi /etc/apt/sources.list

	ESC+i insert模式
	ESC Shift+; 
        q! Enter 退出编辑 (E212 Can't open file)
        wq Enter 

	sudo apt update -y && sudo apt full-upgrade -y 
    (更换源后刷新)

## 开启小键盘
    sudo apt install numlockx
    sudo nano /etc/gdm3/Init/Default

    在 exit 0 前添加
    if [ -x /usr/bin/numlockx ]; then
        /usr/bin/numlockx on
    fi
    然后 ctrl+X, Y, Enter


## 再次单击关闭窗口
    `gsettings set org.gnome.shell.extensions.dash-to-dock click-action minimize-or-previews`
    [相关网址](https://www.cnblogs.com/xuewangkai/p/14172187.html)



---
## 软件安装
## 安装 Git
	sudo apt-get install git -y
    (使用 git bash 配置)
    1 Git 本地端设置

        1.1 基本配置
        git config --global user.name "用户名" (配置用户名)(随便写)
        git config --global user.email "邮箱" (配置邮箱)(随便写)
        git config --list (检查信息是否正确)

        1.2 密钥配置
        ssh-keygen -t rsa -b 4096 -C "邮箱" (改邮箱需要与上面填写的保持一致)

    2 Git 网络端配置

        2.1 添加公钥
        将 id_rsa.pub 文本粘贴至此
        https://github.com/settings/keys

## 安装 Python
    sudo apt install python3-pip -y

## 安装 中文输入法
    sudo apt install ibus ibus-pinyin

## 安装 Cisco (VPN)
	cd 下载 (进入对应下载目录)  
	sudo dpkg -i cisco...  

	连接到: vpn.illinois.edu    
	组: 2 Tunnal All  

## 安装 GParted (管理硬盘)
    sudo apt install gparted -y
    sudo gparted (启动软件)

## 安装 Stickynotes (便笺)
    sudo add-apt-repository ppa:umang/indicator-stickynotes
    sudo apt-get update && sudo apt-get install -y indicator-stickynotes

<!-- ## 安装 flameshot (截图软件)
    sudo apt install flameshot -y
    在设置 键盘(Keyboard) -> Keyboard Shortcuts -> Custom Shortcut 处添加快捷键
    命令: flameshot gui
    快捷键: shift + alt + s -->

## 安装 Gnome-Screenshot
    sudo apt install gnome-screenshot -y
    在设置 键盘(Keyboard) -> Keyboard Shortcuts -> Custom Shortcut 处添加快捷键
    命令: gnome-screenshot --area
    快捷键: shift + alt + s
    [参考网址](https://linux.cn/article-15512-1.html)

## 安装 at (定时自动化工具)
    sudo apt-get install at
    sudo systemctl start atd
    sydo systemctl enable atd
    echo "sudo shutdown -h now" | at 02:30 (在今天02:30执行电脑关机命令)

    atq (产看排队任务)
    atrm 1 (取消任务1)

## 安装 Curl (终端工具)
    sudo snap install curl  # version 8.1.2

## 安装 VScode
- [启用二级菜单右键打开文件夹](https://blog.csdn.net/qq2399431200/article/details/119304792)
- [右键 Open in Code](https://askubuntu.com/questions/1049111/add-open-with-vs-code-to-context-menu-in-ubuntu)

<!-- ## 安装 Wine (Linux 模拟 Windows)
- [Wine 官网](https://www.winehq.org/)  
- [Wine Ubuntu 版本](https://wiki.winehq.org/Ubuntu_zhcn)
```
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources  
``` -->

## 安装 新终端

    [Alacritty]
    sudo add-apt-repository ppa:aslatter/ppa (添加PPPA)
    sudo apt install alacrity -y (安装Alacritty)

    sudo apt remove --auto-remove alacritty (删除Alacritty)
    sudo add-apt-repository --remove ppa:aslatter/ppa (删除PPA)

    [Tmux]
    sudo apt-get install tmux -y
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm (Clone git resource to folder .tmux)

    vi ~/.tmux.conf (Configuration file)
        set -g @plugin 'tmux-plugins/tpm'
        set -g @plugin 'tmux-plugins/tmux-sensible'

        run '～/.tmux/plugins/tpm/tpm'

    [Starship](starship.rs) 装饰性终端，更改现有终端终端外观

    [kitty]

## 安装 Google  
	cd 下载 (进入下载文件夹)
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb

## 安装 Onenote [参考网址](https://blog.csdn.net/m0_38068229/article/details/109090379)
sudo snap install p3x-onenote  

p3x-onenote (启动 onenote)

## Ubuntu 优化
[CSDN 开机优化](https://blog.csdn.net/rustwei/article/details/126389070)  
[cnBlog 开机优化](https://www.cnblogs.com/gaowengang/p/10854042.html)  
systemd-analyze time #查看开机时间
systemd-analyze blame #查看各个程序占用开机时间
systemd-analyze critical-chain #打印核心消耗时间链路

systemctl mask plymouth-quit-wait.service [关闭开机动画]
systemctl unmask plymouth-quit-wait.service [恢复开机动画]

systemctl list-dependencies --reverse plymouth-quit-wait.service

sudo systemctl edit apt-daily.timer [延迟apt-daily服务]

sudo systemctl disable xxx.service [禁用某服务启动]