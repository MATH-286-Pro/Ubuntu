#!/bin/bash

# 更新系统并升级所有包
sudo apt update -y && sudo apt full-upgrade -y
echo "System update and full upgrade completed."

# 安装中文输入法
sudo apt install ibus ibus-pinyin
echo "Pin Yin installation complete."

# 开启小键盘
sudo apt install numlockx -y
echo -e "\nif [ -x /usr/bin/numlockx ]; then\n  /usr/bin/numlockx on\nfi" | sudo tee -a /etc/gdm3/Init/Default
echo "Numlockx installation and configuration completed."

# 设置 GNOME 点击行为
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
echo "GNOME click-action setting completed."

# 安装 Python pip
sudo apt install python3-pip -y
echo "Python3-pip installation completed."

# 安装 GParted
sudo apt install gparted -y
echo "GParted installation completed."

# 安装 Stickynotes (便笺)
sudo add-apt-repository ppa:umang/indicator-stickynotes -y
sudo apt-get update
sudo apt-get install -y indicator-stickynotes
echo "Indicator Stickynotes installation completed."

# # 安装 flameshot (截图软件)
# sudo apt install flameshot -y
# echo "Flameshot installation completed."

# 安装 gnome-screenshot(截图软件)
sudo apt install gnome-screenshot -y
echo "Gnome-screenshot installation completed."


# 安装 at (定时自动化工具)
sudo apt-get install at -y
sudo systemctl start atd
sudo systemctl enable atd
echo "At installation and service setup completed."

# 安装 Curl (终端工具)
sudo snap install curl
echo "Curl installation completed."
Download

# 安装 Google Chrome
cd ~/Downloads/  # 假设你将文件下载到了默认的下载目录中
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb -y
echo "Google Chrome installation completed."

echo "Script execution completed. Please restart your Ubuntu."
