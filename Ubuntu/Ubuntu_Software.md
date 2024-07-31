## 必要操作

## 更换镜像源 (https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
	sudo vi /etc/apt/sources.list

	ESC+i insert模式
	ESC Shift+; 
        q! Enter 退出编辑 (E212 Can't open file)
        wq Enter 

## 更换镜像源 后刷新  
	sudo apt update -y && sudo apt full-upgrade -y

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

    1 Git 本地端设置

        1.1 基本配置
        git config --global user.name "用户名" (配置用户名
        git config --global user.email "邮箱" (配置邮箱)
        git config --list (检查信息是否正确)

        1.2 密钥配置
        ssh-keygen -t rsa -b 4096 -C "邮箱"

    2 Git 网络端配置

        2.1 添加公钥
        将 id_rsa.pub 文本粘贴至此
        https://github.com/settings/keys

## 安装 Python
    sudo apt install python3-pip -y

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

## 安装 flameshot (截图软件)
    sudo apt install flameshot -y
    在设置 键盘 处添加快捷键
    命令: flameshot gui
    快捷键: shift + alt + s

## 安装 Curl (终端工具)
    sudo snap install curl  # version 8.1.2

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

## 安装 Issca Gym
    前置条件
    **conda**
	cd 下载 (进入下载文件夹)
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh
    ~/miniconda3/bin/conda init
    source ~/.bashrc

    通过 conda 安装 Python 
    conda activate rlgpu
    conda install python=3.7
    conda install numpy
    conda install -c anaconda libpython

    安装其他依赖库
    conda install -c conda-forge cudatoolkit
    conda install -c conda-forge cudnn

    安装 cuda
    sudo apt install nvidia-cuda-toolkit -y
    nvcc --version (检查是否安装成功)

    更新 Cuda 驱动
    lspci | grep -i nvidia (查看自己的N卡)
        `01:00.0 3D controller: NVIDIA Corporation GP107GLM [Quadro P600 Mobile] (rev a1)`


    CUDA 工具 https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_local

    安装 Issac Gym
    下载并解压文件
    进入文件夹 /isscagym/python
    bash ../create_conda_env_rlgpu.sh

    测试 Issac Gym
    conda activate rlgpu
    cd examples 
    python joint_monkey.py


