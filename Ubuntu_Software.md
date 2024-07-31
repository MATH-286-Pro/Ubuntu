### 必要操作

#### 更换镜像源 (https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
	sudo vi /etc/apt/sources.list

	ESC+i insert模式
	ESC Shift+; 
        q! Enter 退出编辑 (E212 Can't open file)

#### 更换镜像源 后刷新  
	sudo apt update -y && sudo apt full-upgrade -y

#### 开启小键盘
    sudo apt install numlockx
    sudo nano /etc/gdm3/Init/Default

    在 exit 0 前添加
    if [ -x /usr/bin/numlockx ]; then
        /usr/bin/numlockx on
    fi
    然后 ctrl+X, Y, Enter
---
### 软件安装
#### 安装 Git
	sudo apt-get install git

#### 安装 Cisco
	cd 下载 (进入对应下载目录)  
	sudo dpkg -i cisco...  

	连接到: vpn.illinois.edu    
	组: 2 Tunnal All  


#### 安装 Google  
	cd 下载 (进入下载文件夹)
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install --fix-missing ./google-chrome-stable_current_amd64.deb

