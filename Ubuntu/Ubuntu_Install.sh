#!/bin/bash

# 更新系统并升级所有包
sudo apt update -y && sudo apt full-upgrade -y

# 开启小键盘
sudo apt install numlockx -y
echo -e "\nif [ -x /usr/bin/numlockx ]; then\n  /usr/bin/numlockx on\nfi" | sudo tee -a /etc/gdm3/Init/Default

# 设置 GNOME 点击行为
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'

# 安装 Git 并进行基本配置
sudo apt-get install git -y
git config --global user.name "MATH-286-Dell-Ubuntu"
git config --global user.email "jhu114514@gmail.com"
ssh-keygen -t rsa -b 4096 -C "jhu114514@gmail.com"

# 安装 Python pip
sudo apt install python3-pip -y

# 安装 GParted
sudo apt install gparted -y

# 安装 Stickynotes (便笺)
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
sudo apt-get update
sudo apt-get install -y indicator-stickynotes

# 安装 flameshot (截图软件)
sudo apt install flameshot -y

# 安装 at (定时自动化工具)
sudo apt-get install at -y
sudo systemctl start atd
sudo systemctl enable atd

# 安装 Curl (终端工具)
sudo snap install curl

# 安装 Google Chrome
cd ~/下载  # 假设你将文件下载到了默认的下载目录中
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y

echo "脚本执行完毕，请根据需要手动完成一些后续配置。"